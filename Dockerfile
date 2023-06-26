# # Base image
# FROM node:14.17.0-alpine AS node

# # Set working directory
# WORKDIR /

# Copy package.json and package-lock.json (if exists)
#COPY package*.json ./

# Install dependencies
#RUN npm install

# Copy the rest of the application code
#COPY . .

# Build the Node.js application
#RUN npm run build

# Flask and Django image
FROM python:3.8.2

# Set working directory
WORKDIR /app


#윈도우 명령어라서 맥 명령어는 다른 것을 써야됩니다!
# Install Flask and Django dependencies

COPY app.py .

RUN pip install scipy 

RUN pip install soundfile 
RUN pip install PySoundFile 

RUN pip install transformers 

RUN pip install wave

RUN pip install flask django openai https://github.com/kpu/kenlm/archive/master.zip torchaudio torch pyctcdecode huggingface_hub 





CMD ["python", "app.py"]

# Copy built Node.js application from previous stage
#COPY --from=node /app/dist ./static

# Copy Flask and Django application code
#COPY ./app.py .
#COPY ./manage.py .
#COPY ./templates ./templates

# Expose port (if needed)
# EXPOSE 5000

# Start the application
#CMD ["set", "FLASK_APP=app.py"]
#CMD ["flask", "run"]