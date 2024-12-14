# ���������� ����������� ����� Python
FROM python:3.9-slim

# ������������� ������� ���������� ������ ����������
WORKDIR /app

# �������� ���� ������������ requirements.txt � ���������
COPY requirements.txt .

# ������������� �����������
RUN pip install --no-cache-dir -r requirements.txt

# �������� ��� ����� ������� � ���������
COPY . .

# ��������� ���� ��� Django ����������
EXPOSE 8000

# ��������� ������ Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
