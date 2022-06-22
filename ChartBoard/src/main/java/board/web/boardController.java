package board.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import board.service.BoardService;
import board.service.BoardVO;

@Controller
public class boardController {
	
	@Resource(name="boardService")
	private BoardService boardService;
	
	@RequestMapping(value = "/boardWrite.do")
	public String boardWrite() {
		return "board/boardWrite";
	}
	
	@RequestMapping(value = "/boardWriteSave.do")
	@ResponseBody
	public String insertNBoardWriteSave(BoardVO vo) throws Exception{
		// result = null;
		String result = boardService.insertNBoard(vo);
		String msg = "";
		if(result == null) msg = "ok";
		else msg = "fail";
		
		return msg;
	}
	
	@RequestMapping(value = "/boardList.do")
	public String selectNBoardList(BoardVO vo, ModelMap model) throws Exception{
		
		// 페이지당 20개씩 표기
		int unit = 20;
		
		// 총 데이터 개수
		int total = boardService.selectNBoardTotal(vo);
		
		// 토탈 페이지 얻기
		int totalPage = (int) Math.ceil((double)total/unit);
		
		// uri의 페이지 주소 바꾸는것 방지
		int viewPage = vo.getViewPage();
		
		if(viewPage > totalPage || viewPage <1) {
			viewPage = 1;
		}
		
		int startIndex = (viewPage-1) * unit + 1;
		int endIndex = startIndex + (unit - 1);
		
		int startRowNo = total - (viewPage-1)*unit;
		
		vo.setStartIndex(startIndex);
		vo.setEndIndex(endIndex);
		
		List<?> list = boardService.selectNBoardList(vo);
		System.out.println("list : " + list);
		
		model.addAttribute("rowNumber", startRowNo);
		model.addAttribute("total", total);
		model.addAttribute("totalPage", totalPage);
		model.addAttribute("resultList", list);
		
		return "board/boardList";
	}
		
	@RequestMapping(value="/boardDetail.do")
	public String selectNBoardDetail(BoardVO vo, ModelMap model) throws Exception{
		/*
		 * 상세보기
		 */
		BoardVO boardVO = boardService.selectNBoardDetail(vo.getUnq());
		
		model.addAttribute("boardVO", boardVO);
		
		return "board/boardDetail";
	}
	
	/*
	 * 수정(Modify)
	 */
	@RequestMapping(value="/boardModifyWrite.do")
	public String selectNBoardModifyWrite(BoardVO vo, ModelMap model) throws Exception{
		
		BoardVO boardVO = boardService.selectNBoardDetail(vo.getUnq());
		model.addAttribute("boardVO", boardVO);
		
		return "board/boardModifyWrite";
	}
	
	@RequestMapping(value="/boardModifySave.do")
	@ResponseBody
	public String updateNBoard(BoardVO vo) throws Exception{
		
		int result = 0;
		
		
		
	
		return result+"";
	}
	
}




















