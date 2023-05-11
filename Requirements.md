# ssh-Key-rotation-aws from public EC2 to private EC2
Creating a key rotation from your public instance EC2 in aws to your Private EC2 instance 

You need architecture of an ec2 in a public subnet with internet gate way,
and an ec2 in a private subnet with no internet gateway with the same key.pem amazon issues you.

#The Rotation is preformed after you are able to connect to your private instance using your .pem file key.
KEY_PATH refers to the .pem file

