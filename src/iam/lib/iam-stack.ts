import * as cdk from 'aws-cdk-lib';
import { Construct } from 'constructs';
// import * as sqs from 'aws-cdk-lib/aws-sqs';
import { Role, ServicePrincipal } from 'aws-cdk-lib/aws-iam';

export class IamStack extends cdk.Stack {
  constructor(scope: Construct, id: string, props?: cdk.StackProps) {
    super(scope, id, props);

    // The code that defines your stack goes here

    const role = new Role(this, 'HelloRole', {
      assumedBy: new ServicePrincipal('sns.amazonaws.com'),
    });

    // example resource
    // const queue = new sqs.Queue(this, 'IamQueue', {
    //   visibilityTimeout: cdk.Duration.seconds(300)
    // });
  }
}
