# استخدم صورة Ubuntu رسمية
FROM ubuntu:22.04

# تحديث النظام وتثبيت g++
RUN apt-get update && apt-get install -y g++

# إنشاء مجلد للمشروع
WORKDIR /app

# نسخ الملفات للمجلد داخل الحاوية
COPY . /app

# بناء البرنامج
RUN g++ main.cpp -o myapp

# تشغيل البرنامج عند تشغيل الحاوية
CMD ["./myapp"]
