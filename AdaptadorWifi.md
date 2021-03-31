# Instalação do driver do adaptador de Wifi 0bda:f179 Realtek Semiconductor Corp

### A identificação real do chip da placa é obtido com o comando abaixo.

```bash
$ lsusb
```
### No caso dessa placa a saída foi a abaixo.

```bash
Bus 001 Device 007: ID 0bda:f179 Realtek Semiconductor Corp.
```



---
## Instalação 0bda:f179 Realtek Semiconductor.

### Faça o download da firmware.

```bash
$ git clone https://github.com/ulli-kroll/rtl8188fu.git
```

### Entre no diretório da firmware que fez o download.

```bash
$ cd ~/rtl8188fu
```

### Compile a firmware.

```bash
$ make
```

### Carregue os modulos.

```bash
$ sudo modprobe cfg80211

$ sudo insmod rtl8188fu.ko
```

### Instale a firmware.

```bash
$ sudo make installfw
```

### Ativar ao inicializar o sistema

```bash
$ sudo install -p -m 644 rtl8188fu.ko /lib/modules/$(uname -r)/kernel/drivers/net/wireless/
$ sudo depmod -a $(uname -r)
$ sudo update-initramfs -u
```

### Reiniciar o sistema

```bash
$ sudo reboot
```

---
## Se nao funcionar ao iniciar rode os codigos abaixo:

```bash
$ cd ~/rtl8188fu
$ sudo modprobe cfg80211
$ sudo insmod rtl8188fu.ko
```
---

By Matheus Vilela :wave: [Get in touch!](https://www.linkedin.com/in/vilelagit/)
