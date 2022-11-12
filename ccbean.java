package websys;

public class ccbean implements java.io.Serializable{

	private static final long serialVersionUID = 1L;
	
	private String amount;
	private String sell;
	private String buy;
	private String result;
	
	
	/**
	 * @return the result
	 */
	public String getResult() {
		return result;
	}

	/**
	 * @param result the result to set
	 */
	public void setResult(String result) {
		this.result = result;
	}

	public ccbean() {
	}

	/**
	 * @return the amount
	 */
	public String getAmount() {
		return amount;
	}

	/**
	 * @param amount the amount to set
	 */
	public void setAmount(String amount) {
		this.amount = amount;
	}

	/**
	 * @return the sell
	 */
	public String getSell() {
		return sell;
	}

	/**
	 * @param sell the sell to set
	 */
	public void setSell(String sell) {
		this.sell = sell;
	}

	/**
	 * @return the buy
	 */
	public String getBuy() {
		return buy;
	}

	/**
	 * @param buy the buy to set
	 */
	public void setBuy(String buy) {
		this.buy = buy;
	}
	
	
}
