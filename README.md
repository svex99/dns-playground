1. Crear la imagen.

```
docker image build -t bind-test .
```

2. Correr el contenedor.

```
docker container run -it --rm --name bind-server -p 8989:53 bind-test
```

3. Al realizar una query con `dig` no obtengo respuesta del servidor.

```
❯ dig @localhost -p 8989 domain.com

; <<>> DiG 9.16.8-Ubuntu <<>> @localhost -p 8989 domain.com
; (1 server found)
;; global options: +cmd
;; connection timed out; no servers could be reached
```
