package dto;

import java.sql.Date;

public class Mission {
	private int idx;
	private String title;
	private String context;
	private String miImg;
	private boolean success; // 기본값 : null, true=1 false=0
	private Date createdAt; // 등록일
	private Date updatedAt; // 성공, 실패 업뎃 시 updatedAt 받음 (수정저장시에는 받지 않음)
	private int catId;
	private int userIdx;

	public int getIdx() {
		return idx;
	}

	public void setIdx(int idx) {
		this.idx = idx;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public String getMiImg() {
		return miImg;
	}

	public void setMiImg(String miImg) {
		this.miImg = miImg;
	}

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

	public int getCatId() {
		return catId;
	}

	public void setCatId(int catId) {
		this.catId = catId;
	}

	public int getUserIdx() {
		return userIdx;
	}

	public void setUserIdx(int userIdx) {
		this.userIdx = userIdx;
	}

}