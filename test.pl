use strict;
use warnings;
use Mime::Lite;

my $mail = MIME::Lite->new(
    'From' => 'quantinh@gmail.com',
    'To' => 'htinh7444@gmail.com, danmap0914@gmail.com',
    'Subject' => 'Report',
    'Type' => 'multipart/mixed'
);
$mail->attach(
    Type => 'TEXT',
    Data => 'PFA Status Report'
);
$mail->attach(
    Encodings => 'base64',
    Type => 'TEXT/CSV',
    Path => "/",
    Filename => "report.txt",
    Disposition => 'attachment'
);
$mail->send;