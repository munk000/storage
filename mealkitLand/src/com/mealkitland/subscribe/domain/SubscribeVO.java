package com.mealkitland.subscribe.domain;

import java.util.Objects;

public class SubscribeVO {

	
	private Long subscribeId;
	private String subscribeDate;
	private int subscribeCount;
	private Long userId;
	private Long productId;
	
	public SubscribeVO() {
		super();
	}

	public Long getSubscribeId() {
		return subscribeId;
	}

	public void setSubscribeId(Long subscribeId) {
		this.subscribeId = subscribeId;
	}

	public String getSubscribeDate() {
		return subscribeDate;
	}

	public void setSubscribeDate(String subscribeDate) {
		this.subscribeDate = subscribeDate;
	}

	public int getSubscribeCount() {
		return subscribeCount;
	}

	public void setSubscribeCount(int subscribeCount) {
		this.subscribeCount = subscribeCount;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}
	
	

	@Override
	public String toString() {
		return "SubscribeVO [subscribeId=" + subscribeId + ", subscribeDate=" + subscribeDate + ", subscribeCount="
				+ subscribeCount + ", userId=" + userId + ", productId=" + productId + "]";
	}

	@Override
	public int hashCode() {
		return Objects.hash(subscribeId);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		SubscribeVO other = (SubscribeVO) obj;
		return Objects.equals(subscribeId, other.subscribeId);
	}

	
	
	
}
