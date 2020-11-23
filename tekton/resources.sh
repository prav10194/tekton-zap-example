kubectl delete secret heroku-details -n tekton-pipelines
kubectl delete task zap-task-ref -n tekton-pipelines
kubectl delete task heroku-task-ref -n tekton-pipelines
kubectl delete pipeline zap-pipeline-ref -n tekton-pipelines
kubectl delete pipelinerun pipeline-run -n tekton-pipelines
kubectl delete volume pipeline-pvc -n tekton-pipelines

kubectl create -f secret.yaml -n tekton-pipelines
kubectl create -f task-zap.yaml -n tekton-pipelines
kubectl create -f task-heroku.yaml -n tekton-pipelines
kubectl create -f pipeline.yaml -n tekton-pipelines
kubectl create -f pipelinerun.yaml -n tekton-pipelines