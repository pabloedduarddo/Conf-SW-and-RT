                                                         Determinação dos Endereços de SVI e Gateway

!Acessando o modo exec privilegiado
permitir

	!Acessar modo de configuração global
	configurar terminal

	!Configuração do gateway padrão IPv4 do SVI
	!Utilizado para acesso remoto o equipamento
	ip default-gateway 172.16.10.254

	!Configuração da interface virtual VLAN SVI
	interface vlan 10

		!Configuração da descrição
		descrição Interface SVI de Gerenciamento do Grupo-0?

		!Configuração do endereçamento IPv4 do SVI
		endereço IP 172.16.10.253 255.255.255.0

		!Inicializando uma interface
		sem desligamento

		!Saindo de todos os níveis
		fim

#01_ Determinação do endereço IPv4 da VLAN de SVI e Gateway do Switch Layer 3
SVI: 172.16.10.253/24 - Gateway: 172.16.10.254/24