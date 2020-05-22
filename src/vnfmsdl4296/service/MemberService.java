package vnfmsdl4296.service;

import vnfmsdl4296.dao.MemberDAO;
import vnfmsdl4296.vo.MemberVO;

//액션태그에 사용할 자바빈즈 클래스
public class MemberService {

    private MemberDAO mdao = null;

    public MemberService() {
        mdao = new MemberDAO();
    }

    // 새로운 회원을 테이블에 저장
    public String newMember(MemberVO m) {
        String result = "회원가입 실패 ㅜㅜ";

        if (mdao.insertMember(m))
            result = "회원가입 성공 ^^";

        System.out.println(result); // 가입여부 확인용

        return result;
    }

}