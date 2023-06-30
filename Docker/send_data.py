import requests

def send_data(url):
    files = {
        'file':open('./path/to/audiofile5.jpg', 'rb')
    }
    res = requests.post(url,files=files)
    return res.text

url = "http://172.17.0.2:5001/transcribe"
print(send_data(url))