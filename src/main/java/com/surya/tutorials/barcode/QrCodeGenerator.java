package com.surya.tutorials.barcode;

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.util.Hashtable;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

public class QrCodeGenerator {

	public BufferedImage createQrCode(String content, int height, int width, String format) {
		try {
			// Create the ByteMatrix for the QR-Code that encodes the given String.
			Hashtable<EncodeHintType, ErrorCorrectionLevel> hintMap = new Hashtable<EncodeHintType, ErrorCorrectionLevel>();
			hintMap.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.L);
			QRCodeWriter qrCodeWriter = new QRCodeWriter();
			BitMatrix bitMatrix = qrCodeWriter.encode(content, BarcodeFormat.QR_CODE, width, height, hintMap);
			// Make the BufferedImage that are to hold the QRCode
			int matrixWidth = bitMatrix.getWidth();
			BufferedImage image = new BufferedImage(matrixWidth, matrixWidth, BufferedImage.TYPE_INT_RGB);
			image.createGraphics();
			Graphics2D graphics = (Graphics2D) image.getGraphics();
			graphics.setColor(Color.WHITE);
			graphics.fillRect(0, 0, matrixWidth, matrixWidth);
			// Paint and save the image using the ByteMatrix
			graphics.setColor(Color.BLACK);

			for (int i = 0; i < matrixWidth; i++) {
				for (int j = 0; j < matrixWidth; j++) {
					if (bitMatrix.get(i, j)) {
						graphics.fillRect(i, j, 1, 1);
					}
				}
			}

			return image;
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return null;
	}

//	public BufferedImage createQrCode(String content, int size) {
//		return createQrCode(content, 250, 250, "png");
//	}
//
//	public static void main(String[] args) throws IOException {
//		ImageIO.write(new QrCodeGenerator().createQrCode("http://suryakand-shinde.blogspot.com", 250),
//				"png", new FileOutputStream(new File("d://qrcode.png")));
//	}
}
