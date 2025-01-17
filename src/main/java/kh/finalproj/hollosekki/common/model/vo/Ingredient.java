package kh.finalproj.hollosekki.common.model.vo;

public class Ingredient extends Product {
	private int ingredientNo;
	private String ingredientName; 
	private String ingredientType;
	private String ingredientContent;
	private String ingredientStatus;
	private String isAccept;
	private int productNo;
	private int qnaNo; 
	
	public Ingredient() {}

	public Ingredient(int ingredientNo, String ingredientName, String ingredientType, String ingredientContent,
			String ingredientStatus, String isAccept, int productNo, int qnaNo) {
		super();
		this.ingredientNo = ingredientNo;
		this.ingredientName = ingredientName;
		this.ingredientType = ingredientType;
		this.ingredientContent = ingredientContent;
		this.ingredientStatus = ingredientStatus;
		this.isAccept = isAccept;
		this.productNo = productNo;
		this.qnaNo = qnaNo;
	}

	public int getIngredientNo() {
		return ingredientNo;
	}

	public void setIngredientNo(int ingredientNo) {
		this.ingredientNo = ingredientNo;
	}

	public String getIngredientName() {
		return ingredientName;
	}

	public void setIngredientName(String ingredientName) {
		this.ingredientName = ingredientName;
	}

	public String getIngredientType() {
		return ingredientType;
	}

	public void setIngredientType(String ingredientType) {
		this.ingredientType = ingredientType;
	}

	public String getIngredientContent() {
		return ingredientContent;
	}

	public void setIngredientContent(String ingredientContent) {
		this.ingredientContent = ingredientContent;
	}

	public String getIngredientStatus() {
		return ingredientStatus;
	}

	public void setIngredientStatus(String ingredientStatus) {
		this.ingredientStatus = ingredientStatus;
	}

	public String getIsAccept() {
		return isAccept;
	}

	public void setIsAccept(String isAccept) {
		this.isAccept = isAccept;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public int getQnaNo() {
		return qnaNo;
	}

	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}

	@Override
	public String toString() {
		return "Ingredient [ingredientNo=" + ingredientNo + ", ingredientName=" + ingredientName + ", ingredientType="
				+ ingredientType + ", ingredientContent=" + ingredientContent + ", ingredientStatus=" + ingredientStatus
				+ ", isAccept=" + isAccept + ", productNo=" + productNo + ", qnaNo=" + qnaNo + "]";
	}

	
	

}
