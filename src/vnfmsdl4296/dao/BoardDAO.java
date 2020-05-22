package vnfmsdl4296.dao;

import vnfmsdl4296.vo.BoardVO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BoardDAO {
    private String DRV = "org.mariadb.jdbc.Driver";
    private String URL = "jdbc:mariadb://pureun.ch4tbiskojst.ap-northeast-2.rds.amazonaws.com:3306/bigdata";
    private String USR = "bigdata";
    private String PWD = "bigdata2020";

    private String insertSQL =
            "insert into Board (title, userid, contents) values (?,?,?)";
    private String selectSQL =
            "select bno,title,userid,regdate,thumbup,views from Board order by bno desc";
    private String selectOneSQL =
            "select * from Board where bno = ?";
    private String updateSQL ="";
    private String deleteSQL ="";



    public boolean insertBoard(BoardVO b){
        boolean isInsert=false;
        Connection conn =null;

        PreparedStatement pstmt = null;

        try{
            Class.forName(DRV);
            conn= DriverManager.getConnection(URL,USR,PWD);
            pstmt= conn.prepareStatement(insertSQL);
            pstmt.setString(1,b.getTitle());
            pstmt.setString(2,b.getUserid());
            pstmt.setString(3,b.getContents());



            int cnt = pstmt.executeUpdate();
            if (cnt>0) isInsert = true;

        }catch (Exception ex){ex.printStackTrace();
        }finally {
            if(pstmt !=null) try{pstmt.close();}catch (Exception ex){}
            if(conn !=null) try{conn.close();}catch (Exception ex){}
        }
        return isInsert;

    }

    // 게시판 테이블에서 글번호/제목/작성자/작성일/추천/조회만
    // 골라서 동적배열에 담아 변환함
    public ArrayList<BoardVO> selectBoard() {
        ArrayList<BoardVO> bdlist=
                new ArrayList<>();

        Connection conn =null;
        ResultSet rs =null;
        PreparedStatement pstmt = null;

        try{
            Class.forName(DRV);
            conn= DriverManager.getConnection(URL,USR,PWD);
            pstmt= conn.prepareStatement(selectSQL);
            rs= pstmt.executeQuery();

            while(rs.next()){
                BoardVO b = new BoardVO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        null
                );
                bdlist.add(b);
            }

        }catch (Exception ex){ex.printStackTrace();
        }finally {
            if(rs !=null) try{rs.close();}catch (Exception ex){}
            if(pstmt !=null) try{pstmt.close();}catch (Exception ex){}
            if(conn !=null) try{conn.close();}catch (Exception ex){}
        }
        return bdlist;


    }


    // 글번호로 선택한 게시물에 대해 모든 컬럼을 조회해서 BoardVO 객체에 저장하고 반환
    public BoardVO selectOneBoard (String bno) {
        BoardVO bvo = null;
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try{
            Class.forName(DRV);
            conn = DriverManager.getConnection(URL, USR, PWD);
            pstmt = conn.prepareStatement(selectOneSQL);
            pstmt.setString(1, bno);
            rs = pstmt.executeQuery();

            if (rs.next()){
                bvo = new BoardVO(
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7));
            }

        } catch (Exception ex) {

        } finally {
            if(rs !=null) try{rs.close();}catch (Exception ex){}
            if(pstmt !=null) try{pstmt.close();}catch (Exception ex){}
            if(conn !=null) try{conn.close();}catch (Exception ex){}
        }

        return bvo;
    }


}
