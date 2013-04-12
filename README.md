
1. Instale o VirtualBox, disponível em <https://www.virtualbox.org/>;

1. Instale Vagrant >= 1.1.X, disponivel no site <http://vagrantup.com>;

1. Instale ruby 1.9;

1. Instale chef:

    `> gem install chef`

1. Instale vagrant-omnibus. Este plugin garante que o Chef estará instalado na versão correta na VM:

    `> vagrant plugin install vagrant-omnibus`


1. Instale uma box do Ubuntu 12.04 no Vagrant :

    `> vagrant box add precise64 http://dl.dropbox.com/u/1537815/precise64.box`

(caso prefira outro sabor de Linux, existe uma lista bastante grande de listadas em <http://www.vagrantbox.es/>)

1. Baixe o meu template de código no GitHub:

    `> git clone git://github.com/mgalves/vagrant-chef-nginx.git`

1. Entre no diretório `vagrant-chef-nginx/chef_repo`;

1. Rode o comando:

    `> vagrant up`

1. Acesse <http://192.168.33.10/>;

1. Voilá!