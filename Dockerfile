FROM python
RUN pip install flask
RUN pip uninstall opencv-python -y
RUN pip install opencv-python-headless
WORKDIR /src
COPY . .
EXPOSE 4010
CMD python app.py
