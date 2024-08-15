create database if not exists quan_ly_dat_hang;
create table phieu_xuat(
so_px int primary key ,
ngay_xuat datetime
);
create table vat_tu(
ma_vt int primary key ,
ten_vt varchar(50)
);
create table xuat(
so_px int,
ma_vt int,
primary key(so_px,ma_vt),
foreign key (so_px) references phieu_xuat(so_px),
foreign key (ma_vt) references vat_tu(ma_vt),
don_gia_xuat int,
so_luong_xuat int
);
create table phieu_nhap(
so_pn int primary key,
ngay_nhap datetime
);
create table nhap(
ma_vt int,
so_pn int,
foreign key(ma_vt) references vat_tu(ma_vt),
foreign key(so_pn) references phieu_nhap(so_pn),
don_gia_nhap int,
so_luong_nhap int
);
create table don_dh(
so_dh int primary key,
ngay_dh datetime,
ma_cc int,
foreign key(ma_cc) references nha_cc(ma_cc)
);
create table chi_tiet_dh(
ma_vt int,
so_dh int,
primary key(ma_vt,so_dh),
foreign key (ma_vt) references vat_tu(ma_vt),
foreign key(so_dh) references don_dh(so_dh)
);
create table nha_cc(
ma_cc int primary key,
ten_cc varchar(50),
dia_chi varchar(200)
);
create table sdt(
so_dt int,
ma_cc int,
foreign key (so_dt) references nha_cc(ma_cc)
)


