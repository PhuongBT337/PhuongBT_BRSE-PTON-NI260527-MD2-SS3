CREATE TABLE books (
    ma_sach VARCHAR(20) PRIMARY KEY,
    ten_sach VARCHAR(100) NOT NULL
);

CREATE TABLE readers (
    ma_doc_gia VARCHAR(20) PRIMARY KEY,
    ten_doc_gia VARCHAR(100) NOT NULL
);

CREATE TABLE borrowings (
    ma_muon VARCHAR(20) PRIMARY KEY,
    ma_doc_gia VARCHAR(20) NOT NULL,
    ma_sach VARCHAR(20) NOT NULL,
    ngay_muon DATE,
    ngay_tra DATE,

    FOREIGN KEY (ma_doc_gia) REFERENCES readers(ma_doc_gia),
    FOREIGN KEY (ma_sach) REFERENCES books(ma_sach)
);

ALTER TABLE borrowings
MODIFY ngay_muon DATE NOT NULL;