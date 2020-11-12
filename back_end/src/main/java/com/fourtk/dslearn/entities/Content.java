package com.fourtk.dslearn.entities;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "tb_content")
public class Content extends Lesson implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private String content;
	private String videoUri;
	
	public Content() {
		// TODO Auto-generated constructor stub
	}

	public Content(Long id, String title, Integer position, Section section, String content, String videoUri) {
		super(id, title, position, section);
		this.content = content;
		this.videoUri = videoUri;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getVideoUri() {
		return videoUri;
	}

	public void setVideoUri(String videoUri) {
		this.videoUri = videoUri;
	}
}
