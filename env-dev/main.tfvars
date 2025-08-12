instances = {
    # catalogue= {
    #     ami_id = "ami-09c813fb71547fc4f"
    #     instance_type="t3.micro"
    #     ansible_role= "catalogue-docker"
    # }
    # mongodb= {
    #     ami_id = "ami-09c813fb71547fc4f"
    #     instance_type= "t3.micro"
        
    # }
    # frontend= {
    #     ami_id="ami-09c813fb71547fc4f"
    #     instance_type= "t3.micro"
    #     ansible_role= "fronted-docker"
    # }

    # redis= {
    #     ami_id="ami-09c813fb71547fc4f"
    #     instance_type= "t3.micro"
        
    # }
    cart={
        ami_id="ami-09c813fb71547fc4f"
        instance_type= "t3.micro"
        ansible_role= "cart-docker"
    }
    # user={
    #     ami_id="ami-09c813fb71547fc4f"
    #     instance_type= "t3.micro"
    #     ansible_role= "user-docker"
    # }
    # shpping={
    #     ami_id="ami-09c813fb71547fc4f"
    #     instance_type= "t3.micro"
    #     ansible_role= "shipping-docker"
    # }
    # mysql={
    #     ami_id="ami-09c813fb71547fc4f"
    #     instance_type= "t3.micro"
        
    # }
    # rabbitmq={
    #     ami_id="ami-09c813fb71547fc4f"
    #     instance_type= "t3.micro"
    #     ansible_role= "rabbitmq-docker"
    # }
    # payment={
    #     ami_id="ami-09c813fb71547fc4f"
    #     instance_type= "t3.micro"
        
    # }
  }

zone_id= "Z10310253KPZLFJOC7YEK"

 vpc_security_group_ids = ["sg-0c80700f974319444"]

 env ="dev"

