# elk

> 环境搭建

```
# 创建elk用户和组
groupadd elk
useradd elk -g elk -p elk
```

> elasticsearch

```
tar -xzvf elasticsearch-5.5.2.tar.gz

chown -R elk:elk elasticsearch

su elk cd elasticsearch-5.5.2/bin

# 修改配置文件
vi config/elasticsearch.yml
    path.data: /data/elasticsearch     #日志存储目录
    path.logs: /data/elasticsearch/log #elasticsearch启动日志路径
    network.host: elk1        #这里是主机IP,我写了hosts
    node.name: "node-2"       #节点名字,不同节点名字要改为不一样
    http.port: 9200           #api接口url
    node.master: true         #主节点
    node.data: true           #是否存储数据

# 手动发现节点,我这里有两个节点加入到elk集群
discovery.zen.ping.unicast.hosts: [elk1, elk2]

# 后台启动
./elasticsearch -d

# 问题 elasticsearch 5.x - bootstrap checks failed
https://stackoverflow.com/questions/42300463/elasticsearch-5-x-bootstrap-checks-failing

ulimit -n 65536

ulimit -u 2048

set vm.max_map_count=262144 in /etc/sysctl.conf then do sysctl -p
```

> Kibana

```
tar -xzvf kibana-5.5.2-linux-x86_64.tar.gz

chown -R elk:elk kibana

# 修改配置文件
vim /opt/kibana/config/kibana.yml
    server.port: 5601
    #server.host: "localhost"
    server.host: "0.0.0.0"
    elasticsearch.url: "http://elk1:9200”
bin/kibana

# 检查5601是否监听
netstat -ntlp|grep 5601

# 添加nginx认证
openssl req -subj '/CN=10.0.30.65/' -x509 -days $((100 * 365)) -batch -nodes -newkey rsa:2048 -keyout private/logstash.key -out certs/logstash.crt

```


5. logstash

/*
bin/logstash -f conf.d/filebeat.conf
*/

6. filebeat

/*
./filebeat -e -c filebeat.yml -d Publish
*/


运维必知必会的监控知识体系全梳理 - http://www.yunweipai.com/archives/22459.html

