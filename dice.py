from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def dice_page():
    return render_template('dice_page.html')

@app.route('/test')
def test():
    return 'Works!'