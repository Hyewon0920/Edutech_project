FROM python:3.8.2

WORKDIR /app

COPY . /app

RUN pip install scipy soundfile 
RUN pip install PySoundFile 
RUN pip install transformers 
RUN pip install wave
RUN pip install flask 
RUN pip install django 
RUN pip install openai 
RUN pip install https://github.com/kpu/kenlm/archive/master.zip 
RUN pip install torchaudio 
RUN pip install torch 
RUN pip install pyctcdecode 
RUN pip install huggingface_hub 


CMD ["python", "app.py"]

