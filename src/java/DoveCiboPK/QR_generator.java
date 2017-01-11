/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DoveCiboPK;

/**
 *
 * @author IO-PC
 */
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import net.glxn.qrgen.QRCode;
import net.glxn.qrgen.image.ImageType;

public class QR_generator {

    public QR_generator(String text, Integer ID) {

        // get QR stream from text using defaults
        ByteArrayOutputStream stream = QRCode.from(text).stream();

        // override the image type to be JPG
        QRCode.from(text).to(ImageType.JPG).stream();

        // override image size to be 250x250
        QRCode.from(text).withSize(250, 250).stream();
        try {
            
            FileOutputStream fout = new FileOutputStream(new File(
                    "C:\\Users\\IO-PC\\Desktop\\QR_Rest_"+ID+".JPG"));
            fout.write(stream.toByteArray());
            fout.flush();
            fout.close();

        } catch (FileNotFoundException e) {
            // Do Logging
        } catch (IOException e) {
            // Do Logging
        }
    }
}