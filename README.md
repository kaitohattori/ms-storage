# MS Storage

## Deploy

### volumes

```
$ kubectl apply -f deploy/postgres-pv.yaml
$ kubectl apply -f deploy/video-assets-pv.yaml
$ kubectl apply -f deploy/logs-pv.yaml
```

### postgres

```
$ kubectl apply -f deploy/deployment.yaml
$ kubectl apply -f deploy/service.yaml
```

### Initialize table

Copy and paste `db/init.sql` in pods terminal

```
$ psql -l
$ psql video

# paste the sql query

# Check tables
$ \dt;
```

## Persistent volume

```
$ minikube ssh
$ ls /data/ms-tv
```
