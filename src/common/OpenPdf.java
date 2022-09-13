/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package common;

import java.awt.Desktop;
import javax.swing.JOptionPane;
import java.io.File;

/**
 *
 * @author udaraekanayake96
 */
public class OpenPdf {
    public static void openById(String id)
    {
        try {

		File pdfFile = new File("/Users/udaraekanayake96/Documents/"+id+".pdf");
		if (pdfFile.exists()) {

			if (Desktop.isDesktopSupported()) {
				Desktop.getDesktop().open(pdfFile);
			} else {
				System.out.println("Awt Desktop is not supported!");
			}

		} else {
			System.out.println("File is not exists!");
		}

		System.out.println("Done");

	  } catch (Exception ex) {
		ex.printStackTrace();
	  }
    }
}
