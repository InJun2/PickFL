package com.pickfl.inquery.model.vo;

import com.pickfl.inquery.model.service.InquerySearchService;

public class InquerySearchVo {
	private String user;
	private String type;
	private int currentPage;
	private int maxCount;
	private int maxPage;
	private int startPage;
	private int endPage;
	private int memberNo;
	
	public InquerySearchVo(String user, String type, String page, int memberNo) {
		this.user = user;
		this.type = type;
		this.memberNo = memberNo;
		this.maxCount = maxCount(user, type);
		this.maxPage = maxPage(maxCount);
		this.currentPage = currentPage(page,maxPage);
		this.startPage = currentPage/7 +1;
		this.endPage = startPage +6;
	}

	public InquerySearchVo() {
		
	}

	private int maxCount(String user, String type) {
		int maxcount;
		
		if(type == null) {
			return maxcount=1;
		}
		
		if(user.equals("admin3"))
			maxcount = new InquerySearchService().maxCountPage(type);
		else 
			maxcount = new InquerySearchService().memberCountPage(memberNo, type);
		
		System.out.println("inquery maxcount : " + maxcount);
		return maxcount;
	}
	
	private int maxPage(int maxCount) {
		int maxPage;
		if(maxCount % 7 == 0) {
			maxPage = maxCount/7;
		}
		else{
			maxPage = maxCount/7 +1;
		}
		return maxPage;
	}
	
	public int currentPage(String curr, int maxPage) {
		int currentPage;
		if(curr == null)
			curr = "1";
		
		currentPage = Integer.parseInt(curr);
		
		if(currentPage > maxPage){
			currentPage = maxPage;
		}else if(currentPage < 1) {
			currentPage = 1;
		}
		
		return currentPage;
	}

	public String getUser() {
		return user;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public int getEndPage() {
		return endPage;
	}
	
	public int getMaxCount() {
		return maxCount;
	}
	
	public String getType() {
		return type;
	}
	
	public int getStartPage() {
		return startPage;
	}

	public int getMemberNo() {
		return memberNo;
	}

	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	
}
