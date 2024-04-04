### Grafana elastic search dashboard

1) Run the executable `setup.sh` which will setup relay server, Elastic search and Grafana.
2) run `kubectl get secret --namespace default grafana -o jsonpath="{.data.admin-password}" | base64 --decode ; echo ` 
to get the Grafana login pasword
3) run `kc port-forward deploy/grafana -n kubearmor 3000:3000` and open localhost:3000 in your browser.
4) login with the username:admin and use the password you got from the step 2.
5) After signing in go to the add new connection located in the bottom of the menu and add infinity.
6) Then go to Data sources section and add infinity as data source.
7) Go to Dashboards section and click add a new dashboard and import the "grafana_nodegraph.json" which is located in this
directory.
8) Make sure every deployment is running without any failure and do some kubectl exec and wait.
9) Reload the grafana dashboard and wait for some time for the nodegraph view.



