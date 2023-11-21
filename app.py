from flask import Flask,json,render_template
import logging

app = Flask(__name__)
logging.basicConfig(level=logging.INFO)
logger = logging.getLogger(__name__)

@app.route('/status')
def healthcheck():
    response = app.response_class(
            response=json.dumps({"result":"OK - healthy"}),
            status=200,
            mimetype='application/json'
    )

    logger.info('Status request successfull')
    return response

@app.route('/metrics')
def metrics():
    response = app.response_class(
            response=json.dumps({"status":"success","code":0,"data":{"UserCount":140,"UserCountActive":23}}),
            status=200,
            mimetype='application/json'
    )

    logger./info('Metrics request successfull')
    return response

@app.route('/')
def index():
    return render_template('index.html')

if __name__ == "__main__":
    ## stream logs to a file
    app.run(host='0.0.0.0',port=8080,debug=True)
