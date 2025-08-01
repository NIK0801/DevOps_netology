from flask import Flask, request, jsonify
import uuid, os

UPLOAD_DIR = "/tmp/uploads"
os.makedirs(UPLOAD_DIR, exist_ok=True)

app = Flask(__name__)

@app.route("/v1/upload", methods=["POST"])
def upload():
    file_id = f"{uuid.uuid4()}.jpg"
    file_path = os.path.join(UPLOAD_DIR, file_id)
    with open(file_path, "wb") as f:
        f.write(request.data)
    return jsonify({"file": file_id})

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5001)
