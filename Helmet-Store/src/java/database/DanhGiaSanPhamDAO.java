package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import model.DanhGiaSanPham;
import model.DonHang;
import model.KhachHang;
import utils.JDBCUtil;

public class DanhGiaSanPhamDAO {

    public int insert(DanhGiaSanPham danhGiaSanPham) {
        int ketqua = 0;
        try {
            Connection con = JDBCUtil.getConnection();
            String sql = "insert into danhgiasanpham VALUES(?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, danhGiaSanPham.getMaKhachHang());
            ps.setString(2, danhGiaSanPham.getMaSanPham());
            ps.setString(3, danhGiaSanPham.getMaDonHang());
            ps.setInt(4, danhGiaSanPham.getDanhGiaSao());
            ps.setString(5, danhGiaSanPham.getChiTiet());
            ps.setInt(6, danhGiaSanPham.isTrangthaidanhgia());

            ketqua = ps.executeUpdate();

            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ketqua;
    }

    public int kiemTraDonHangDaDuocDanhGiaHayChua(String madonhang) {
        int ketqua = 0;
        try {
            Connection con = JDBCUtil.getConnection();
            String sql = "Select trangthaidanhgia from danhgiasanpham where madonhang = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, madonhang);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                ketqua = rs.getInt(1);
            }

            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return ketqua;
    }

    public List<DanhGiaSanPham> selectPreviewProduct(String masanpham) {
        int ketqua = 0;
           List<DanhGiaSanPham> list = new ArrayList<DanhGiaSanPham>();
        try {
         
            Connection con = JDBCUtil.getConnection();
            String sql = "Select * from danhgiasanpham where masanpham = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, masanpham);

            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                DanhGiaSanPham dg = new DanhGiaSanPham();
                dg.setMaDonHang(rs.getString("makhachhang"));
                KhachHangDAO dao = new KhachHangDAO();
                KhachHang kh = dao.selectById(rs.getString("makhachhang"));
                
                dg.setDanhGiaSao(rs.getInt("danhgiasao"));
                dg.setChiTiet(rs.getString("chitiet"));
                dg.setKhachHang(kh);
                
                list.add(dg);
                
            }

            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

}
