package board.service;

import java.util.List;

public interface BoardService {
	/*
	 * 게시판 저장처리
	 */
	public String insertNBoard(BoardVO vo) throws Exception;
	
	/*
	 * 게시판 화면 목록
	 */
	public List<?> selectNBoardList(BoardVO vo) throws Exception;
	
	/*
	 * TOTAL 개수 얻기
	 */
	public int selectNBoardTotal(BoardVO vo) throws Exception;
	
	/*
	 * 상세화면
	 */
	public BoardVO selectNBoardDetail (int unq) throws Exception;
	
	/*
	 * 수정
	 */
	public int updateNBoard(BoardVO vo) throws Exception;
}
