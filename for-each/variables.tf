variable "instance_type"{
    default= {
        mysql="t3.micro"
        backend= "t3.large"
        frontend= "t3.samll"
    }
}
