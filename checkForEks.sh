checkForEKS=$(grep -i eksctl-UdacityCapstone-cluster list.txt | wc -l)
if [[ $checkForEKS -gt 0 ]]
    then 
    echo "we have $checkForEKS results, Skipping cluster creation"
    else
    echo "Cant find kube cluster, creating..."
    echo $AWS_DEFAULT_REGION
    #eksctl create cluster --name UdacityCapstone --version 1.19 --region $AWS_DEFAULT_REGION --nodegroup-name UdacityCapstone --node-type t3.nano --nodes-min 2 --nodes-max 4 --managed
fi