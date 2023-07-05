package kh.finalproj.hollosekki.menu.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kh.finalproj.hollosekki.common.model.vo.Image;
import kh.finalproj.hollosekki.common.model.vo.Likes;
import kh.finalproj.hollosekki.common.model.vo.Menu;
import kh.finalproj.hollosekki.common.model.vo.PageInfo;
import kh.finalproj.hollosekki.common.model.vo.Product;
import kh.finalproj.hollosekki.enroll.model.vo.Users;
import kh.finalproj.hollosekki.menu.model.dao.MenuDAO;
import kh.finalproj.hollosekki.menu.model.vo.MenuList;

@Service
public class MenuServiceImpl implements MenuService{
	@Autowired
	private MenuDAO mDAO;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int getListCount() {
		return mDAO.getListCount(sqlSession);
	}
	
	@Override
	public ArrayList<Menu> selectMenuList(PageInfo pi) {
		return mDAO.selectMenuList(sqlSession, pi);
	}
	
	@Override
	public ArrayList<Image> selectMenuImage() {
		return mDAO.selectMenuImage(sqlSession);
	}
	
	@Override
	public Menu menuDetail(int mNo) {
		return mDAO.menuDetail(sqlSession, mNo);
	}
	
	@Override
	public Image menuDetailThum(int mNo) {
		return mDAO.menuDetailThum(sqlSession, mNo);
	}
	
	@Override
	public ArrayList<MenuList> menuDetailMenu(int mNo) {
		return mDAO.menuDetailMenu(sqlSession, mNo);
	}
	
	@Override
	public ArrayList<Image> menuDetailImage() {
		return mDAO.menuDetailImage(sqlSession);
	}
	
	@Override
	public ArrayList<Menu> searchMenu(String word) {
		return mDAO.searchMenu(sqlSession, word);
	}
	
	@Override
	public ArrayList<Menu> menuCategory(int cate) {
		return mDAO.menuCategory(sqlSession, cate);
	}
	
	@Override
	public int selectUsersNo(int mNo) {
		return mDAO.selectUsersNo(sqlSession, mNo);
	}
	
	@Override
	public ArrayList<Product> healtherInfo(int usersNo) {
		return mDAO.healtherInfo(sqlSession, usersNo);
	}

	@Override
	public int selectBookmark(int usersNo, int productNo) {
		return mDAO.selectBookmark(sqlSession, usersNo, productNo);
	}

	@Override
	public int insertBookmark(int usersNo, int divisionNo) {
		return mDAO.insertBookmark(sqlSession, usersNo, divisionNo);
	}

	@Override
	public int deleteBookmark(int usersNo, int divisionNo) {
		return mDAO.deleteBookmark(sqlSession, usersNo, divisionNo);
	}

	@Override
	public ArrayList<Menu> menuScore() {
		return mDAO.menuScore(sqlSession);
	}

	@Override
	public ArrayList<Likes> likeList() {
		return mDAO.likeList(sqlSession);
	}

	@Override
	public ArrayList<Likes> loginUserLikeList(Users u) {
		return mDAO.loginUserLikeList(sqlSession, u);
	}
}
