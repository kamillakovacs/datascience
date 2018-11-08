from flask import Flask
import requests

app = Flask(__name__)
@app.route('/', methods=['GET', 'POST'])
def receive_message():
  return "Hello World!"

if __name__ == '__main__':
  app.run()

if request.method == 'GET':
  token_sent = requests.args.get("hub.verify_token")
  return verify_fb_token(token_sent)
else:
  output = requests.get_json()
  for event in output['entry']:
    messaging = event['messaging']
    for message in messaging:
      if message.get('message'):
        recipient_id = message['sender']['id']
        if message['message'].get('text'):
          response_sent_text = get_message()
          send_message(recipient_id, response_sent_text)