### Grafana elastic search dashboard

1) Begin by cloning the datasource plugin repository using the command: git clone https://github.com/harisudarsan1/KubeArmor-datasource.git.
2) Navigate into the cloned repository directory and install dependencies, then build the plugin by running: npm i && npm run build.
3) Adjust the hostpath values in the deploy/grafana.yaml file to reflect the path to the cloned plugin from step 1. Replace your_path_to_the_plugin accordingly.
4) Start the kubernetes cluster and deploy elastic search and grafana by using manifests in the deploy directory. run `kubectl apply -f deploy/`.
5) Forward the Grafana deployment to your local machine by running: kubectl port-forward deploy/grafana -n kubearmor 3000:3000, then access Grafana via localhost:3000 in your browser.
6) login with the username:admin and password:admin and skip the new password part.
7) Once logged in, navigate to datasources and verify if the kubeArmor plugin is listed. Add the Elasticsearch URL http://elasticsearch:9200, save, and test the connection. 
If successful, it should display "clustername: k8s logs", indicating successful communication with the Elasticsearch backend.
8) Proceed to the Dashboards section and add kubeArmor as a datasource. Initially, it will show as having no data.
9) To populate data, execute some kubectl exec commands and observe the node graph. You can utilize the namespace and labels filters to refine your view.


