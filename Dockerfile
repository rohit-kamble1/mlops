FROM python:3.9.19-slim-bookworm
COPY . /app
WORKDIR /app
RUN apt update -y && apt install awscli -y
RUN pip install -r requirements.txt
#EXPOSE 8501
CMD streamlit run app.py