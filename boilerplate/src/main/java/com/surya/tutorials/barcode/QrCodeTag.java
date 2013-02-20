package com.surya.tutorials.barcode;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.apache.commons.codec.binary.Base64OutputStream;

public class QrCodeTag extends TagSupport {
	private static final long serialVersionUID = 1L;
	private String format = "png";
	private int height = 250;
	private int width = 250;
	private String content;
	private String var;

	public int doStartTag() throws JspException {
		try {
			JspWriter out = pageContext.getOut();
			QrCodeGenerator qrCodeGenerator = new QrCodeGenerator();
			BufferedImage bufferedImage = qrCodeGenerator.createQrCode(content, height, width, format);
			ByteArrayOutputStream byteaOutput = new ByteArrayOutputStream();
			Base64OutputStream base64Output = new Base64OutputStream(byteaOutput);
			ImageIO.write(bufferedImage, format, base64Output);
			String base64 = new String(byteaOutput.toByteArray());

			if(var != null && var.length() > 0) {
				pageContext.setAttribute(var, base64);
			} else {
				out.print("<img src='data:image/"+ format + ";base64,"+base64+"'>");
			}

			out.flush();
		} catch(IOException ioe) {
			throw new JspException("Error:"+ioe.getMessage());
		}

		return EVAL_PAGE;
	}

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getVar() {
		return var;
	}

	public void setVar(String var) {
		this.var = var;
	}

}