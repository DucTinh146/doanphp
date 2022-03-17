<?php
    include  "PHPMailer/src/PHPMailer.php";
    include  "PHPMailer/src/Exception.php";
    // include  "PHPMailer/src/OAuth.php";
    include  "PHPMailer/src/OAuthTokenProvider.php";

    include  "PHPMailer/src/POP3.php";
    include  "PHPMailer/src/SMTP.php";
     
    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;

    class Mailer{
             public function dathangmail($tieude,$noidung,$maildathang){
                $mail = new PHPMailer(true); 
                $mail->CharSet='UTF-8';

    // print_r($mail);
    // try {
    //     // Server settings
    //     $mail->SMTPDebug = 0;                                 // Enable verbose debug output
    //     // $mail->isSMTP();                                      // Set mailer to use SMTP
    //     $mail->Host = 'smtp.example.com';  // Specify main and backup SMTP servers
    //     $mail->SMTPAuth = true;                               // Enable SMTP authentication
    //     $mail->Username = 'ductinh146@gmail.com';                 // SMTP username
    //     $mail->Password = 'sjveunbgsprrbbgl';                           // SMTP password
    //     $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
    //     $mail->Port = 587;                                    // TCP port to connect to
     
    //     //Recipients
    //     $mail->setFrom('ductinh146@gmail.com', 'Mailer');
        
    //     $mail->addAddress('ngocthuong2345@gmail.com', 'Joe User');     // Add a recipient
    //     $mail->addAddress('ductinh1462@gmail.com','ssss');               
    //     // Name is optional
    //     // $mail->addReplyTo('info@example.com', 'Information');
    //     // $mail->addCC('cc@example.com');
    //     // $mail->addBCC('bcc@example.com');
     
    //     //Attachments
    //     // $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
    //     // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
     
    //     //Content
    //     $mail->isHTML(true);                                  // Set email format to HTML
    //     $mail->Subject = 'Here is the subject';
    //     $mail->Body    = 'This is the HTML message body in bold!';
    //     // $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
     
    //     $mail->send();
        
    //     echo 'Message has been sent';
    // } catch (Exception $e) {
    //     echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
    // }
//     $mail = new PHPMailer(TRUE);
        // $mail->SMTPDebug = 0;                                 // Enable verbose debug output

        $mail->isSMTP();
        $mail->Host = "smtp.gmail.com";
        $mail->SMTPAuth = true;
        $mail->Username = "ductinh146@gmail.com";
        $mail->Password = "sjveunbgsprrbbgl";
        $mail->SMTPSecure = "tls";
        $mail->Port = 587;

        $mail->isHTML(true);
        $mail->setFrom('ductinh146@gmail.com', 'Mailer');
        $mail->addAddress($maildathang,'Đức Tính');
        $mail->addCC('ductinh146@gmail.com');

        $mail->Subject = $tieude;
        // $mail->AltBody = $noidung1;
        $mail->Body = $noidung;

        $mail->send();

        echo 'Message has been sent';
        // $success_msg = "Message sent.";
    }
}
?>