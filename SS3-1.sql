CREATE DATABASE quanlysinhvien_lophoc;

USE quanlysinhvien_lophoc;

CREATE TABLE classes (
    ma_lop VARCHAR(20) PRIMARY KEY,
    ten_lop VARCHAR(100) NOT NULL,
    nam_hoc VARCHAR(20) NOT NULL
);

CREATE TABLE students (
    ma_sinh_vien VARCHAR(20) PRIMARY KEY,
    ho_ten VARCHAR(100) NOT NULL,
    ngay_sinh DATE NOT NULL,
    gioi_tinh VARCHAR(10) NOT NULL,
    ma_lop VARCHAR(20) NOT NULL,

    FOREIGN KEY (ma_lop) REFERENCES classes(ma_lop)
);