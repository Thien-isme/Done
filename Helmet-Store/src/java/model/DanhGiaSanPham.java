/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Thien
 */


    public class DanhGiaSanPham {
        // Thuộc tính ánh xạ với các cột trong bảng

        private String maKhachHang;  // makhachhang (varchar(30), NOT NULL)
        private String maSanPham;    // masanpham (varchar(255), NOT NULL)
        private String maDonHang; 
        private int danhGiaSao;      // danhgiasao (int, NOT NULL)
        private String chiTiet;      // chitiet (varchar(MAX), NOT NULL)
        private int trangthaidanhgia;
        private KhachHang khachHang;
        
        // Constructor mặc định
        public DanhGiaSanPham() {
        }

        // Constructor đầy đủ tham số
        public DanhGiaSanPham(String maKhachHang, String maSanPham, int danhGiaSao, String chiTiet) {
            this.maKhachHang = maKhachHang;
            this.maSanPham = maSanPham;
            this.danhGiaSao = danhGiaSao;
            this.chiTiet = chiTiet;
        }

        // Getter và Setter cho maKhachHang
        public String getMaKhachHang() {
            return maKhachHang;
        }

        public void setMaKhachHang(String maKhachHang) {
            this.maKhachHang = maKhachHang;
        }

        // Getter và Setter cho maSanPham
        public String getMaSanPham() {
            return maSanPham;
        }

        public void setMaSanPham(String maSanPham) {
            this.maSanPham = maSanPham;
        }

        // Getter và Setter cho danhGiaSao
        public int getDanhGiaSao() {
            return danhGiaSao;
        }

        public void setDanhGiaSao(int danhGiaSao) {
            this.danhGiaSao = danhGiaSao;
        }

        // Getter và Setter cho chiTiet
        public String getChiTiet() {
            return chiTiet;
        }

        public void setChiTiet(String chiTiet) {
            this.chiTiet = chiTiet;
        }

    public int isTrangthaidanhgia() {
        return trangthaidanhgia;
    }

    public void setTrangthaidanhgia(int trangthaidanhgia) {
        this.trangthaidanhgia = trangthaidanhgia;
    }

    public String getMaDonHang() {
        return maDonHang;
    }

    public void setMaDonHang(String maDonHang) {
        this.maDonHang = maDonHang;
    }

    public KhachHang getKhachHang() {
        return khachHang;
    }

    public void setKhachHang(KhachHang khachHang) {
        this.khachHang = khachHang;
    }
    
    
    
        
        

        // Phương thức toString để in thông tin đối tượng
        @Override
        public String toString() {
            return "DanhGiaSanPhamDTO{"
                    + "maKhachHang='" + maKhachHang + '\''
                    + ", maSanPham='" + maSanPham + '\''
                    + ", danhGiaSao=" + danhGiaSao
                    + ", chiTiet='" + chiTiet + '\''
                    + '}';
        }
    
}
