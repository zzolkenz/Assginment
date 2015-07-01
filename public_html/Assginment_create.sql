-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2015-07-01 01:20:16.209




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV int  NOT NULL,
    TenNV varchar(50)  NOT NULL,
    Ngaysinh date  NOT NULL,
    Gioitinh varchar(50)  NOT NULL,
    Email varchar(50)  NOT NULL,
    Mucluong int  NOT NULL,
    MaPhong int  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY (MaNV)
);



-- Table: TPhongban
CREATE TABLE TPhongban (
    MaPhong int  NOT NULL,
    TenPhong varchar(50)  NOT NULL,
    TNhanvien_MaNV int  NOT NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY (MaPhong)
);







-- foreign keys
-- Reference:  TPhongban_TNhanvien (table: TPhongban)


ALTER TABLE TPhongban ADD CONSTRAINT TPhongban_TNhanvien 
    FOREIGN KEY (TNhanvien_MaNV)
    REFERENCES TNhanvien (MaNV)
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE 
;






-- End of file.

