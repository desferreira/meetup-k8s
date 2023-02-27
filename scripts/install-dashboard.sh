kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.6.1/aio/deploy/recommended.yaml
kubectl apply -f ../manifests/dashboard

DASHBOARD_TOKEN=$(kubectl -n kubernetes-dashboard create token admin-user)
DASHBOARD_URL="http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/"

echo "Your dashboard token is $DASHBOARD_TOKEN"

echo "Access your dashboard here $DASHBOARD_URL"

echo $DASHBOARD_TOKEN > .token

