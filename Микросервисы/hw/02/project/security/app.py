from flask import Flask, request, jsonify

app = Flask(__name__)
users = {}

@app.route("/v1/user", methods=["POST"])
def register():
    data = request.json
    users[data["login"]] = data["password"]
    return jsonify({"status": "registered"})

@app.route("/v1/token", methods=["POST"])
def login():
    data = request.json
    if users.get(data["login"]) == data["password"]:
        # Возвращаем фиктивный токен
        return jsonify({"token": "Bearer FAKE-TOKEN"})
    return jsonify({"error": "invalid creds"}), 401

@app.route("/v1/user", methods=["GET"])
def user_info():
    auth = request.headers.get("Authorization")
    if auth == "Bearer FAKE-TOKEN":
        return jsonify({"user": "bob"})
    return jsonify({"error": "unauthorized"}), 401

@app.route("/v1/token/validation", methods=["GET"])
def validate():
    auth = request.headers.get("Authorization")
    if auth == "Bearer FAKE-TOKEN":
        return jsonify({"valid": True})
    return jsonify({"valid": False}), 401

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
