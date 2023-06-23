package kh.finalproj.hollosekki.users.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kh.finalproj.hollosekki.common.model.vo.Follow;
import kh.finalproj.hollosekki.common.model.vo.Image;
import kh.finalproj.hollosekki.common.model.vo.PageInfo;
import kh.finalproj.hollosekki.enroll.model.vo.Users;
import kh.finalproj.hollosekki.recipe.model.vo.Recipe;

@Repository
public class UsersDAO {

	public int updatePwd(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return sqlSession.update("usersMapper.updatePwd", map);
	}

	public int updateInfo(SqlSessionTemplate sqlSession, Users u) {
		return sqlSession.update("usersMapper.updateInfo", u);
	}

	public int insertImage(SqlSessionTemplate sqlSession, Image image) {
		return sqlSession.insert("usersMapper.insertImage", image);
	}

	public int updateProfile(SqlSessionTemplate sqlSession, Users u) {
		return sqlSession.update("usersMapper.updateProfile", u);
	}

	public Image selectImage(SqlSessionTemplate sqlSession, int usersNo) {
		return sqlSession.selectOne("usersMapper.selectImage", usersNo);
	}

	public int deleteImage(SqlSessionTemplate sqlSession, Image existingImage) {
		return sqlSession.delete("usersMapper.deleteImage", existingImage);
	}

	public int deleteImage(SqlSessionTemplate sqlSession, int usersNo) {
		return sqlSession.delete("usersMapper.deleteImagebase", usersNo);
	}

	public Users selectInfo(SqlSessionTemplate sqlSession, Users u) {
		return sqlSession.selectOne("usersMapper.selectInfo", u);
	}

	public int deleteInfo(SqlSessionTemplate sqlSession, int usersNo) {
		return sqlSession.update("usersMapper.deleteInfo", usersNo);
	}

	public ArrayList<HashMap<String, Object>> selectFollowing(SqlSessionTemplate sqlSession, int usersNo) {
		return (ArrayList)sqlSession.selectList("usersMapper.selectFollowing", usersNo);
	}

	public ArrayList<HashMap<String, Object>> selectFollower(SqlSessionTemplate sqlSession, int usersNo) {
		return (ArrayList)sqlSession.selectList("usersMapper.selectFollower", usersNo);
	}

	public int deleteFollow(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return sqlSession.delete("usersMapper.deleteFollow", map);
	}

	public int insertFollow(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return sqlSession.insert("usersMapper.insertFollow", map);
	}

	public ArrayList<Recipe> selectMyRecipe(SqlSessionTemplate sqlSession, int usersNo, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("usersMapper.selectMyRecipe", usersNo, rowBounds);
	}

	public int recipeBookCount(SqlSessionTemplate sqlSession, int foodNo) {
		return sqlSession.selectOne("usersMapper.recipeBookCount", foodNo);
	}

	public int recipeLikeCount(SqlSessionTemplate sqlSession, int foodNo) {
		return sqlSession.selectOne("usersMapper.recipeLikeCount", foodNo);
	}


}
