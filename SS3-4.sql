CREATE TABLE users (
    ma_nguoi_dung VARCHAR(20) PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    mat_khau VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE,
    trang_thai VARCHAR(10) DEFAULT 'ACTIVE'
);

ALTER TABLE users
ADD CONSTRAINT chk_trang_thai
CHECK (trang_thai IN ('ACTIVE', 'INACTIVE'));

-- dùng khi cần xóa bảng
DROP TABLE IF EXISTS users;