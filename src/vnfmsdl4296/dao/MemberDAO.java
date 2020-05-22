package vnfmsdl4296.dao;


import vnfmsdl4296.vo.MemberVO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class MemberDAO {
    private String DRV = "org.mariadb.jdbc.Driver";
    private String URL = "jdbc:mariadb://pureun.ch4tbiskojst.ap-northeast-2.rds.amazonaws.com:3306/bigdata";
    private String USR = "bigdata";
    private String PWD = "bigdata2020";

    // 회원데이터를 CRUD하기위한 질의문
    private String insertSQL =
            "insert into Members (name, userid, passwd, jumin, zipcode, addr1, addr2, email, mobile) " +
                    "values (?,?,?,?,?,?,?,?,?)";
    private String selectSQL =
            "select name, userid, passwd, email from Members order by mno desc";
    private String selectOneSQL =
            "select * from Members where mno = ?";
    private String updateSQL ="";
    private String deleteSQL ="";


// 회원 데이터를 Members테이블에 저장
    public boolean insertMember(MemberVO m){
        boolean isInsert=false;
        Connection conn =null;

        PreparedStatement pstmt = null;

        try{
            Class.forName(DRV);
            conn= DriverManager.getConnection(URL,USR,PWD);
            pstmt= conn.prepareStatement(insertSQL);
            pstmt.setString(1,m.getName());
            pstmt.setString(2,m.getUserid());
            pstmt.setString(3,m.getPasswd());
            pstmt.setString(4,m.getJumin());
            pstmt.setString(5,m.getZipcode());
            pstmt.setString(6,m.getAddr1());
            pstmt.setString(7,m.getAddr2());
            pstmt.setString(8,m.getEmail());
            pstmt.setString(9,m.getMobile());



            int cnt = pstmt.executeUpdate();
            if (cnt>0) isInsert = true;

        }catch (Exception ex){ex.printStackTrace();
        }finally {
            if(pstmt !=null) try{pstmt.close();}catch (Exception ex){}
            if(conn !=null) try{conn.close();}catch (Exception ex){}
        }
        return isInsert;

    }

    // 회원 테이블에서 이름/아이디/비번/이메일 만
    // 골라서 동적배열에 담아 변환함
    public ArrayList<MemberVO> selectMember() {
        ArrayList<MemberVO> mlist = new ArrayList<>();

        Connection conn =null;
        ResultSet rs =null;
        PreparedStatement pstmt = null;

        try{
            Class.forName(DRV);
            conn= DriverManager.getConnection(URL,USR,PWD);
            pstmt= conn.prepareStatement(selectSQL);
            rs= pstmt.executeQuery();

            while(rs.next()){
                MemberVO m = new MemberVO(
                        null,
                        rs.getString(1),
                        null,
                        rs.getString(2),
                        rs.getString(3),
                        null,
                        null,
                        null,
                        rs.getString(4),
                        null,
                        null
                );
                mlist.add(m);
            }

        }catch (Exception ex){ex.printStackTrace();
        }finally {
            if(rs !=null) try{rs.close();}catch (Exception ex){}
            if(pstmt !=null) try{pstmt.close();}catch (Exception ex){}
            if(conn !=null) try{conn.close();}catch (Exception ex){}
        }
        return mlist;


    }


    // 회원번호로 선택한 회원에 대해 모든 컬럼을 조회해서 MemberVO 객체에 저장하고 반환
    public MemberVO selectOneMember (String mno) {
        MemberVO m = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try{
            Class.forName(DRV);
            conn = DriverManager.getConnection(URL, USR, PWD);
            pstmt = conn.prepareStatement(selectOneSQL);
            pstmt.setString(1, mno);
            rs = pstmt.executeQuery();

            if (rs.next()){
                m = new MemberVO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11));
            }

        } catch (Exception ex) {

        } finally {
            if(rs !=null) try{rs.close();}catch (Exception ex){}
            if(pstmt !=null) try{pstmt.close();}catch (Exception ex){}
            if(conn !=null) try{conn.close();}catch (Exception ex){}
        }

        return m;
    }


}
