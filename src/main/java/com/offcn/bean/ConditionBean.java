package com.offcn.bean;

public class ConditionBean {
	private String area;
	private String type;
	private String year;
	private String style;
	private String name;
	
	private String low;
	private String high;
	
	
	public String getLow() {
		if(this.year != null){
			if(this.year.length() == 4){
				if(this.year.endsWith("���")){
					String s = this.year.substring(0, 1);
					this.low = "19" + s + "0";
				}else{
					this.low = this.year;
				}
			}else if(this.year.length() > 4){
				String[] split = this.year.split("-");
				this.low = split[1];
			}else if(this.year.length() < 4){
				this.low = "1800";
			}
		}
		return low;
	}

	public void setLow(String low) {
		this.low = low;
	}
	public String getHigh() {
		if(this.year != null){
			if(this.year.length() == 4){
				if(this.year.endsWith("���")){
					String s = this.year.substring(0, 1);
					this.high = "19" + s + "9";
				}else{
					this.high = this.year;
				}
			}else if(this.year.length() > 4){
				String[] split = this.year.split("-");
				this.high = split[0];
			}else if(this.year.length() < 4){
				this.high = "1979";
			}
		}
		return high;
	}

	public void setHigh(String high) {
		this.high = high;
	}
	private String caption;
	private String keyword;
	
	//�����������������ѯ��Ա����
	
	private String conname="'��ѯ����'";//����ҳ��ѡ����
	private String convalue="";
	public String getConname() {
		return conname;
	}
	public void setConname(String conname) {
		this.conname = conname;
	}
	public String getConvalue() {
		return convalue;
	}
	public void setConvalue(String convalue) {
		this.convalue = convalue;
	}
	
	
	public String getCaption() {
		if(area!=null && area.length()>0) {
			this.caption="����";
		}else if(type!=null && type.length()>0) {
			this.caption="����";
		}else if(style!=null && style.length()>0) {
			this.caption="���";
		}else if(year!=null && year.length()>0) {
			this.caption="�ҵ����";
		}else if(name!=null && name.length()>0) {
			this.caption="��Ӱ����";
		}
		return caption;
	}
	public void setCaption(String caption) {
		this.caption = caption;
	}
	public String getKeyword() {
		if(area!=null && area.length()>0) {
			this.keyword=area;
		}else if(type!=null && type.length()>0) {
			this.keyword=type;
		}else if(style!=null && style.length()>0) {
			this.keyword=style;
		}else if(year!=null && year.length()>0) {
			this.keyword=year;
		}else if(name!=null && name.length()>0) {
			this.keyword=name;
		}
		
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getStyle() {
		return style;
	}
	public void setStyle(String style) {
		this.style = style;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "ConditionBean [area=" + area + ", type=" + type + ", year=" + year + ", style=" + style + ", name="
				+ name + ", toString()=" + super.toString() + "]";
	}

}
