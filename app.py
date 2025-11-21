from flask import Flask, jsonify

app = Flask(__name__)
app.config['JSONIFY_AS_ASCII']=False
@app.route('/')
def hello():
    return jsonify(mensage="Olá, DataForgeDevRioboo",status="ok")
if __name__== '__main__':
    app.run(host='0.0.0.0', port=5000)
