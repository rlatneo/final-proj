package kh.finalproj.hollosekki.market.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import kh.finalproj.hollosekki.common.model.vo.Image;
import kh.finalproj.hollosekki.common.model.vo.Ingredient;
import kh.finalproj.hollosekki.common.model.vo.Menu;
import kh.finalproj.hollosekki.common.model.vo.PageInfo;
import kh.finalproj.hollosekki.common.model.vo.Point;
import kh.finalproj.hollosekki.enroll.model.vo.Users;
import kh.finalproj.hollosekki.market.model.vo.Attendance;
import kh.finalproj.hollosekki.market.model.vo.Cart;
import kh.finalproj.hollosekki.market.model.vo.Food;
import kh.finalproj.hollosekki.market.model.vo.Options;
import kh.finalproj.hollosekki.market.model.vo.Orders;
//import kh.finalproj.hollosekki.market.model.vo.Orders;
import kh.finalproj.hollosekki.market.model.vo.Product;
import kh.finalproj.hollosekki.market.model.vo.QA;
import kh.finalproj.hollosekki.market.model.vo.Review;
import kh.finalproj.hollosekki.market.model.vo.ShippingAddress;
import kh.finalproj.hollosekki.market.model.vo.Tool;


@Repository
public class MarketDAO {

//   public int insertCart(SqlSessionTemplate sqlSession, HashMap<String, String> result) {
//      return sqlSession.insert("marketMapper.insertCart",result);
//   }

   public void attendanceCheck(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
      sqlSession.update("marketMapper.attendanceCheck", map);
   }

   public void attendanceDay(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
      sqlSession.update("marketMapper.attendanceDay", map);
   }

   public void firstAdDay(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
      sqlSession.selectOne("marketMapper.firstAdDay", map);
   }

   public int aDateCheck(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
      return sqlSession.update("marketMapper.aDateCheck", map);
   }

   public void checkDay(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
      sqlSession.selectOne("marketMapper.checkDay", map);
   }

   public ArrayList<Attendance> allAt(SqlSessionTemplate sqlSession, Users u) {
      return (ArrayList)sqlSession.selectList("marketMapper.allAt", u);
   }

   public void atInsert(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
      sqlSession.insert("marketMapper.atInsert", map);
   }

   public void gettedPoint(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
      sqlSession.update("marketMapper.gettedPoint", map);
   }

   public int atTodayChecked(SqlSessionTemplate sqlSession, Users u) {
      return sqlSession.selectOne("marketMapper.atTodayChecked", u);
   }




   public int insertShipping(SqlSessionTemplate sqlSession, ShippingAddress sa) {
      return sqlSession.insert("marketMapper.insertShipping", sa);
   }

   public ArrayList<ShippingAddress> selectShipping(SqlSessionTemplate sqlSession, int usersNo) {
      return (ArrayList)sqlSession.selectList("marketMapper.selectShipping", usersNo);
   }

   public ArrayList<Cart> selectCartList(SqlSessionTemplate sqlSession, int userNo) {
      return (ArrayList)sqlSession.selectList("marketMapper.selectCartList", userNo);
   }

   public ArrayList<Options> selectOptions(SqlSessionTemplate sqlSession, int productNo) {
      return (ArrayList)sqlSession.selectList("marketMapper.selectOptions", productNo);
   }

   public ArrayList<Product> selectProductList(SqlSessionTemplate sqlSession, int productNo) {
      return (ArrayList)sqlSession.selectList("marketMapper.selectProductList", productNo);
   }

   public Food selectFood(SqlSessionTemplate sqlSession, int productNo) {
      return sqlSession.selectOne("marketMapper.selectFood", productNo);
   }

   public Tool selectTool(SqlSessionTemplate sqlSession, int productNo) {
      return sqlSession.selectOne("marketMapper.selectTool", productNo);
   }

   public Ingredient selectIngrdient(SqlSessionTemplate sqlSession, int productNo) {
      return sqlSession.selectOne("marketMapper.selectIngrdient", productNo);
   }

   public void delBasket(SqlSessionTemplate sqlSession, int preorderNo) {
      sqlSession.delete("marketMapper.delBasket", preorderNo);
   }

   public ArrayList<Product> selectProductInfo(SqlSessionTemplate sqlSession, int productNo) {
      return (ArrayList)sqlSession.selectList("marketMapper.selectProductInfo", productNo);
   }

   public int plusCount(SqlSessionTemplate sqlSession, int preorderNo) {
      return sqlSession.update("marketMapper.plusCount", preorderNo);
   }

   public int plusResultCount(SqlSessionTemplate sqlSession, int preorderNo) {
      return sqlSession.selectOne("marketMapper.plusResultCount", preorderNo);
   }

   public void minusCount(SqlSessionTemplate sqlSession, int preorderNo) {
      sqlSession.update("marketMapper.minusCount", preorderNo);
   }

   public ArrayList<Cart> checkCartList(SqlSessionTemplate sqlSession, int usersNo, int preorderNo) {
      Map<String, Object> map = new HashMap<>();
      map.put("usersNo", usersNo);
      map.put("preorderNo", preorderNo);
      return (ArrayList)sqlSession.selectList("marketMapper.checkCartList", map);
   }   
   
   public void getMonthPoint(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
      sqlSession.update("marketMapper.getMonthPoint", map);
   }

   public Users sendPoint(SqlSessionTemplate sqlSession, Users u) {
      return sqlSession.selectOne("marketMapper.sendPoint", u);
   }

   public void updateOptionNo(SqlSessionTemplate sqlSession, Cart cart) {
      sqlSession.update("marketMapper.updateOptionNo", cart);
   }

   public String selectOptionValue(SqlSessionTemplate sqlSession, int optionNo) {
      return sqlSession.selectOne("marketMapper.selectOptionValue", optionNo);
   }

//   public ArrayList<Cart> selectOptionNo(SqlSessionTemplate sqlSession, int i) {
//      return (ArrayList)sqlSession.selectList("marketMapper.selectOptionNo", i);
//   }

//   public ArrayList<Cart> selectOptionVal(SqlSessionTemplate sqlSession, int preorderNo) {
//      return (ArrayList)sqlSession.selectList("marketMapper.selectOptionVal", preorderNo);
//   }

   
   public ArrayList<Cart> selectOptionNo(SqlSessionTemplate sqlSession, Cart cart) {
      return (ArrayList)sqlSession.selectList("marketMapper.selectOptionNo", cart);
   }

   public Options selectOptionInfo(SqlSessionTemplate sqlSession, Cart cart) {
      return sqlSession.selectOne("marketMapper.selectOptionInfo", cart);
   }

   public Options selectOptions(SqlSessionTemplate sqlSession, Cart cart) {
      return sqlSession.selectOne("marketMapper.selectOptions", cart);
   }

//   public Options selectOptionInfo(SqlSessionTemplate sqlSession, int productOption) {
//      return sqlSession.selectOne("marketMapper.selectOptionInfo", productOption);
//   }

   public Options selectOptionInfo(SqlSessionTemplate sqlSession, int productNo, int productOption) {
      Map<String, Object> map = new HashMap<>();
      map.put("productNo", productNo);
      map.put("productOption", productOption);
      return sqlSession.selectOne("marketMapper.selectOptionInfo", map);
   }

//   public ArrayList<Options> selectOptionSet(SqlSessionTemplate sqlSession, int productNo) {
//      return (ArrayList)sqlSession.selectList("marketMapper.selectOptionsSet", productNo);
//   }

   public ArrayList<Options> selectOptionSet(SqlSessionTemplate sqlSession, int productNo) {
    return (ArrayList)sqlSession.selectList("marketMapper.selectOptionsSet", productNo);
   }


   public Product selectProductSet(SqlSessionTemplate sqlSession, int productNo) {
      return sqlSession.selectOne("marketMapper.selectProductSet",productNo);
   }
   
   public ShippingAddress selectShippingForUpdate(SqlSessionTemplate sqlSession, int shippingNo) {
      return sqlSession.selectOne("marketMapper.selectShippingForUpdate", shippingNo);
   }

   public void updateConfirmShipping(SqlSessionTemplate sqlSession, ShippingAddress sa) {
      sqlSession.update("marketMapper.updateConfirmShipping", sa);
   }

   public ShippingAddress selectChecShip(SqlSessionTemplate sqlSession, int shippingNo) {
      return sqlSession.selectOne("marketMapper.selectChecShip", shippingNo);
   }

   //productNo占쎈퓠 占쏙옙占쎈립 筌롫뗀 뤀 鈺곌퀬 돳 
   public Menu selectMenu(SqlSessionTemplate sqlSession, int productNo) {
      return sqlSession.selectOne("marketMapper.selectMenu", productNo);
   }

   

   public int insertCart(SqlSessionTemplate sqlSession, Cart c) {
      sqlSession.insert("marketMapper.insertCart", c);
      return c.getPreorderNo();
   }

   public int insertImage(SqlSessionTemplate sqlSession, Image image) {
      return sqlSession.insert("marketMapper.insertImage", image);
      
   }   
   //배송지 삭제 
   
   //諛곗넚吏   궘 젣 
   
   //獄쏄퀣 꽊筌욑옙 占쎄텣占쎌젫 
   public int delShipping(SqlSessionTemplate sqlSession, int shippingNo) {
      return sqlSession.delete("marketMapper.delShipping", shippingNo);
   }

	public int insertReview(SqlSessionTemplate sqlSession, Review r) {
		sqlSession.insert("marketMapper.insertReview", r);
		return r.getReviewNo();
	}


//	public ArrayList<Review> selectReview(SqlSessionTemplate sqlSession, Review review, int productNo) {
//		Map<String, Object> map = new HashMap<>();
//		map.put("review", review);
//		map.put("productNo", productNo);
//		return (ArrayList)sqlSession.selectList("marketMapper.selectReview", map);
//	}
	
	public ArrayList<Review> selectReview(SqlSessionTemplate sqlSession, int productNo) {
		return (ArrayList)sqlSession.selectList("marketMapper.selectReview", productNo);
	}
	
	public int selectPoint(SqlSessionTemplate sqlSession, int usersNo) {
		return sqlSession.selectOne("marketMapper.selectPoint", usersNo);
	}
	
	public ArrayList<Image> selectImageList(SqlSessionTemplate sqlSession, HashMap<String, Integer> map) {
		return (ArrayList)sqlSession.selectList("marketMapper.selectImageList", map);
	}

	public int selectReviewCount(SqlSessionTemplate sqlSession, int productNo) {
		return sqlSession.selectOne("marketMapper.selectReviewCount", productNo);
	}

	public ArrayList<String> selectImgList(SqlSessionTemplate sqlSession, int productNo) {
		return (ArrayList)sqlSession.selectList("marketMapper.selectImgList", productNo);
	}
	
	public String selectImg(SqlSessionTemplate sqlSession, int productNo, int i) {
		Map<Object, Object> map = new HashMap<>();
		map.put("productNo", productNo);
		map.put("imgType", i);
		
		return sqlSession.selectOne("marketMapper.selectImg", map);
	}



	public int selectStock(SqlSessionTemplate sqlSession, int productNo) {
		return sqlSession.selectOne("marketMapper.selectStock", productNo);
	}
	
	public void updatePoint(SqlSessionTemplate sqlSession, Users users) {
		sqlSession.update("marketMapper.updatePoint", users);
	}

	public Integer reviewAvg(SqlSessionTemplate sqlSession, int productNo) {
		return sqlSession.selectOne("marketMapper.reviewAvg",productNo);
	}

	public ArrayList<Review> reviewAvgDesc(SqlSessionTemplate sqlSession, int productNo) {
		return (ArrayList)sqlSession.selectList("marketMapper.reviewAvgDesc", productNo);
	
	}
	public void deleteFromCart(SqlSessionTemplate sqlSession, int preorderNo) {
		sqlSession.delete("marketMapper.deleteFromCart", preorderNo);
	}
	
	//주문한 상품에 대한 productType 조회 
	public int selectProductType(SqlSessionTemplate sqlSession, int productNo) {
		return sqlSession.selectOne("marketMapper.selectProductType", productNo) ;
	}

	public int insertPay(SqlSessionTemplate sqlSession, Orders orders) {
		return sqlSession.insert("marketMapper.insertPay", orders);
   }

	public int orderSearchCount(SqlSessionTemplate sqlSession, Properties prop) {
		return sqlSession.selectOne("marketMapper.orderSearchCount", prop);
	}

	public ArrayList<Map<String, Object>> orderSearch(SqlSessionTemplate sqlSession, Properties prop, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("marketMapper.orderSearchList", prop, rowBounds);
	}

	public int orderPeriodSearchCount(SqlSessionTemplate sqlSession, Properties prop) {
		return sqlSession.selectOne("marketMapper.orderPeriodSearchCount", prop);
	}

	public ArrayList<Map<String, Object>> orderPeriodSearchList(SqlSessionTemplate sqlSession, Properties prop, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("marketMapper.orderPeriodSearchList", prop, rowBounds);
	}


	public ArrayList<Review> reviewDesc(SqlSessionTemplate sqlSession, int productNo) {
		return (ArrayList)sqlSession.selectList("marketMapper.reviewDesc", productNo);
	}

	public ArrayList<Options> selectOptionInfo(SqlSessionTemplate sqlSession, int preorderNo) {
		return (ArrayList)sqlSession.selectList("marketMapper.selectOptionInfo", preorderNo);
	}


	public void updatePointTable(SqlSessionTemplate sqlSession, Point p) {
		sqlSession.insert("marketMapper.updatePointTable", p);		
	}


	public int insertQna(SqlSessionTemplate sqlSession, QA qna) {
		return sqlSession.insert("marketMapper.insertQna", qna);
	}

	public ArrayList<QA> selectQnaList(SqlSessionTemplate sqlSession, PageInfo pi, int productNo) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("marketMapper.selectQnaList", productNo, rowBounds);
	}

	public int selectQnaCount(SqlSessionTemplate sqlSession, int productNo) {
		return sqlSession.selectOne("marketMapper.selectQnaCount", productNo);
	}

	public int insertLike(SqlSessionTemplate sqlSession, int usersNo, int divisionNo) {
		Map<Object, Object> map = new HashMap<>();
		map.put("usersNo", usersNo);
		map.put("divisionNo", divisionNo);
		
		return sqlSession.insert("marketMapper.insertLike", map);
	}

	public int deleteLike(SqlSessionTemplate sqlSession, int usersNo, int divisionNo) {
		Map<Object, Object> map = new HashMap<>();
		map.put("usersNo", usersNo);
		map.put("divisionNo", divisionNo);
		
		return sqlSession.delete("marketMapper.deleteLike", map);
	}

	public Integer selectLike(SqlSessionTemplate sqlSession, int usersNo, int productNo) {
		Map<Object, Object> map = new HashMap<>();
		map.put("usersNo", usersNo);
		map.put("divisionNo", productNo);
		return sqlSession.selectOne("marketMapper.selectLike", map);
	}

	public Cart selectCart(SqlSessionTemplate sqlSession, int usersNo) {
		return sqlSession.selectOne("marketMapper.selectCart", usersNo);
	}
	
	public ArrayList<QA> qnalist(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return (ArrayList)sqlSession.selectList("marketMapper.qnalist", map);
	}
	//상품 메인 창에서 카테고리 별 조회 
	public ArrayList<Product> selectViewWhole(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("marketMapper.selectViewWhole",null, rowBounds);
	}

	public ArrayList<Food> selectViewFood(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("marketMapper.selectViewFood", null, rowBounds);
	}

	public ArrayList<Menu> selectViewMenu(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("marketMapper.selectViewMenu");
	}

	public ArrayList<Ingredient> selectViewIngredient(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() -1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("marketMapper.selectViewIngredient", null, rowBounds);
	}

	public ArrayList<Tool> selectViewTool(SqlSessionTemplate sqlSession, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("marketMapper.selectViewTool", null, rowBounds);
	}

	public int selectViewWholeCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("marketMapper.selectViewWholeCount");
	}

	public ArrayList<Product> selectWholeHotDeal(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("marketMapper.selectWholeHotDeal");
	}

	public ArrayList<HashMap<String, Object>> selectDetailReview(SqlSessionTemplate sqlSession, int reviewNo) {
		return (ArrayList)sqlSession.selectList("marketMapper.selectDetailReview", reviewNo);
	}
	public String selectIngreImg(SqlSessionTemplate sqlSession, int ingredientNo, int i) {
		Map<Object, Object> map = new HashMap<>();
		map.put("ingredientNo", ingredientNo);
		map.put("5", i);
		
		return sqlSession.selectOne("marketMapper.selectIngreImg", map);
	}

	public ArrayList<HashMap<String, Object>> selectLikeOrderBy(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("marketMapper.selectLikeOrderBy");
	}

	public int selectViewFoodCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("marketMapper.selectViewFoodCount");
	}

	public ArrayList<HashMap<String, Object>> selectLikeOrderByFood(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("marketMapper.selectLikeOrderByFood");
	}

	public Product selectPfood(SqlSessionTemplate sqlSession, int productNo) {
		return sqlSession.selectOne("marketMapper.selectPfood", productNo);
	}

	public ArrayList<Product> selectFoodHotDeal(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("marketMapper.selectFoodHotDeal");
	}

	public int selectViewIngreCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("marketMapper.selectViewIngreCount");
	}

	public Product selectPIngre(SqlSessionTemplate sqlSession, int productNo) {
		return sqlSession.selectOne("marketMapper.selectPIngre", productNo);
	}

	public ArrayList<Product> selectIngreHotDeal(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("marketMapper.selectIngreHotDeal");
	}

	public ArrayList<HashMap<String, Object>> selectLikeOrderByIngre(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("marketMapper.selectLikeOrderByIngre");
	}


	public ArrayList<Orders> orderList(SqlSessionTemplate sqlSession, HashMap<String, Integer> map) {
		return (ArrayList)sqlSession.selectList("marketMapper.orderList", map);
	}

	public ArrayList<Product> selectToolHotDeal(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("marketMapper.selectToolHotDeal");
	}

	public ArrayList<HashMap<String, Object>> selectLikeOrderByTool(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("marketMapper.selectLikeOrderByTool");
	}

	public int deleteImage(SqlSessionTemplate sqlSession, ArrayList<String> delRename) {
		return sqlSession.delete("marketMapper.deleteImage", delRename);
	}

	public int updateReview(SqlSessionTemplate sqlSession, Review r) {
		return sqlSession.update("marketMapper.updateReview", r);
	}

	public int deleteReview(SqlSessionTemplate sqlSession, int reviewNo) {
		return sqlSession.update("marketMapper.deleteReview", reviewNo);
	}

	public ArrayList<Food> selectFoodKindType(SqlSessionTemplate sqlSession, int foodType, int foodKind, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		Map<Object, Object> map = new HashMap<>();
		map.put("foodType", foodType);
		map.put("foodKind", foodKind);
		System.out.println("map : " + map);
		return (ArrayList)sqlSession.selectList("marketMapper.selectFoodKindType", map, rowBounds);
	}

	public ArrayList<Food> selectFoodKind(SqlSessionTemplate sqlSession, int foodKind, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("marketMapper.selectFoodKind", foodKind, rowBounds);
	}

	public ArrayList<Food> selectFoodType(SqlSessionTemplate sqlSession, int foodType, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("marketMapper.selectFoodType", foodType, rowBounds);
	}

	public int selectFoodKindCount(SqlSessionTemplate sqlSession, int foodKind) {
		return sqlSession.selectOne("marketMapper.selectFoodKindCount", foodKind);
	}

	public int selectFoodTypeCount(SqlSessionTemplate sqlSession, int foodType) {
		return sqlSession.selectOne("marketMapper.selectFoodTypeCount", foodType);
	}

	public int selectFoodKindTypeCount(SqlSessionTemplate sqlSession, int foodKind, int foodType) {
		Map<Object, Object> map = new HashMap<>();
		map.put("foodType", foodType);
		map.put("foodKind", foodKind);

		return sqlSession.selectOne("marketMapper.selectFoodKindTypeCount", map);
	}

	public ArrayList<Product> selectLikeOrderByOne(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("marketMapper.selectLikeOrderByOne", sqlSession);
	}

//	검색용 메소드
	public int selectViewSearchCount(SqlSessionTemplate sqlSession, HashMap<String, String> map) {
		return sqlSession.selectOne("marketMapper.selectViewSearchCount", map);
	}

	public ArrayList<Product> selectViewSearch(SqlSessionTemplate sqlSession, PageInfo pi, HashMap<String, String> map) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("marketMapper.selectViewSearch", map, rowBounds);
	}
	
	

	public ArrayList<Product> selectMealKit(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("marketMapper.selectMealKit", sqlSession);
	}

	public int selectReview(SqlSessionTemplate sqlSession, int productNo, String nickName) {
		Map<Object, Object> map = new HashMap<>();
		map.put("productNo", productNo);
		map.put("nickName", nickName);
		
		return sqlSession.selectOne("marketMapper.selReviewCount", map);
	}
	public int goToPay(SqlSessionTemplate sqlSession, Cart c) {
		 sqlSession.insert("marketMapper.goToPay", c);
	      return c.getPreorderNo();
	}

	public void atPointList(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		sqlSession.insert("marketMapper.atPointList", map);
	}

	public Attendance monthCheckUser(SqlSessionTemplate sqlSession, HashMap<String, Object> map) {
		return sqlSession.selectOne("marketMapper.monthCheckUser", map);
	}

	public void monthChecked(SqlSessionTemplate sqlSession, Attendance monthAt) {
		sqlSession.insert("marketMapper.monthChecked", monthAt);
	}

	public int selectViewToolCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("marketMapper.selectViewToolCount");
	}

	public int updateCartCount(SqlSessionTemplate sqlSession, int preorderNo, int size) {
		Map<Object, Object> map = new HashMap<>();
		map.put("preorderNo", preorderNo);
		map.put("size", size);
		
		return sqlSession.update("marketMapper.updateCartCount", map);
	}

//	조회수 Count
	public int addCount(SqlSessionTemplate sqlSession, int pNo, int uNo) {
		String yn = sqlSession.selectOne("marketMapper.isAdmin", uNo);
		if(yn.equals("N")) {
			return sqlSession.update("marketMapper.updateCount", pNo);
		}else {
			return 2;
		}
	}

//	public int deleteReviewImage(SqlSessionTemplate sqlSession, int reviewNo) {
//		return sqlSession.update("marketMapper.deleteReviewImage", reviewNo);
//	}

}