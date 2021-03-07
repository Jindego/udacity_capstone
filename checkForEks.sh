checkForEKS=$(grep -i eksctl-UdacityCapstone-cluster list.txt | wc -l)
if [[ $checkForEKS -gt 0 ]]
    then 
    echo "we have $checkForEKS results, Skipping cluster creation"
    else
    echo "Cant find kube cluster, creating..."
fi