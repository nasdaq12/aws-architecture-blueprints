#!/usr/bin/env python3
import aws_cdk as cdk
from stack import VpcEc2Stack

app = cdk.App()
VpcEc2Stack(app, "VpcEc2Stack")
app.synth()
