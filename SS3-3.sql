CREATE TABLE orders (
    ma_don_hang VARCHAR(20) PRIMARY KEY
);

CREATE TABLE products (
    ma_san_pham VARCHAR(20) PRIMARY KEY
);

CREATE TABLE order_items (
    ma_don_hang VARCHAR(20),
    ma_san_pham VARCHAR(20),
    so_luong INT NOT NULL,

    PRIMARY KEY (ma_don_hang, ma_san_pham),

    FOREIGN KEY (ma_don_hang)
        REFERENCES orders(ma_don_hang),

    FOREIGN KEY (ma_san_pham)
        REFERENCES products(ma_san_pham)
);