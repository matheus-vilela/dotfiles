## A identificação real do chip da placa é obtido com o comando abaixo.

$ lsusb

## No caso dessa placa a saída foi a abaixo.


Bus 001 Device 007: ID 0bda:f179 Realtek Semiconductor Corp.


## Instalação 0bda:f179 Realtek Semiconductor.

###Faça o download da firmware.

$ git clone https://github.com/ulli-kroll/rtl8188fu.git


###Entre no diretório da firmware que fez o download.

cd ~/rtl8188fu


###Compile a firmware.

make


## Carregue os modulos.

sudo modprobe cfg80211

sudo insmod rtl8188fu.ko


## Instale a firmware.

sudo make installfw


## Ativar ao inicializar o sistema

sudo install -p -m 644 rtl8188fu.ko /lib/modules/$(uname -r)/kernel/drivers/net/wireless/
sudo depmod -a $(uname -r)
sudo update-initramfs -u


## Reiniciar o sistema

sudo reboot


## Se nao funcionar ao iniciar rode os codigos abaixo:

cd ~/rtl8188fu
sudo modprobe cfg80211
sudo insmod rtl8188fu.ko


