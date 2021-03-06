package board.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import board.service.BoardService;
import board.service.BoardVO;

// 컨트롤러와 연결되는 설정
@Service("boardService")
public class BoardServiceImpl implements BoardService{
	
	@Resource(name = "boardDAO")
	public BoardDAO boardDAO;

	@Override
	public String insertNBoard(BoardVO vo) throws Exception {
		return boardDAO.insertNBoard(vo);
	}

	@Override
	public List<?> selectNBoardList(BoardVO vo) throws Exception {		
		return boardDAO.selectNBoardList(vo);
	}

	@Override
	public int selectNBoardTotal(BoardVO vo) throws Exception {		
		return boardDAO.selectNBoardTotal(vo);
	}

	@Override
	public BoardVO selectNBoardDetail(int unq) throws Exception {
		return boardDAO.selectNBoardDetail(unq);
	}

	@Override
	public int updateNBoard(BoardVO vo) throws Exception {
		return boardDAO.updateNBoard(vo);
	}
	
	
}
