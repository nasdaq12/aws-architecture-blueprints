from aws_cdk import (
    Stack,
    aws_ec2 as ec2,
    aws_elasticloadbalancingv2 as elbv2
)
from constructs import Construct

class VpcEc2Stack(Stack):

    def __init__(self, scope: Construct, id: str, **kwargs) -> None:
        super().__init__(scope, id, **kwargs)

        vpc = ec2.Vpc(self, "Vpc",
            max_azs=2
        )

        sg = ec2.SecurityGroup(self, "InstanceSG", vpc=vpc)

        instance = ec2.Instance(self, "Instance",
            instance_type=ec2.InstanceType("t2.micro"),
            machine_image=ec2.MachineImage.latest_amazon_linux(),
            vpc=vpc,
            security_group=sg
        )

        lb = elbv2.ApplicationLoadBalancer(self, "LB",
            vpc=vpc,
            internet_facing=True
        )

        listener = lb.add_listener("Listener", port=80)
        listener.add_targets("Targets", port=80, targets=[instance])
