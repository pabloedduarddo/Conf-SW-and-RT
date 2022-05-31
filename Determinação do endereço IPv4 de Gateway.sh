                                                          Determinação do endereço IPv4 de Gateway do Router 2911


!Acessando o modo exec privilegiado
permitir

	!Acessar modo de configuração global
	configurar terminal

		!Acessando uma Interface Física GigabitEthernet 0/0
		interface gigabitEthernet 0/0

			!Inicializando uma Interface Física gigabitEthernet 0/0
			sem desligamento
			saída

		!OBSERVAÇÃO IMPORTANTE: veja o arquivo 00-DocumentacaoDaRede.txt
		interface gigabitEthernet 0/0.10
			descrição Subinterface da VLAN de SVI do Switch Layer 3 3560
			encapsulamento dot1Q 10
			endereço IP 172.16.10.254 255.255.255.0
			saída

		!Configurando uma Subinterface da VLAN do Primeiro Usuário
		interface gigabitEthernet 0/0.11
			descrição Subinterface da VLAN do Primeiro Usuário
			encapsulamento dot1Q 11
			endereço IP 172.16.10.254 255.255.255.0
			saída

		!Configurando uma Subinterface da VLAN do Segundo Usuário
		interface gigabitEthernet 0/0.12
			descrição Subinterface da VLAN do Segundo Usuário
			encapsulamento dot1Q 12
			endereço IP 172.16.??.254 255.255.255.0
			saída

		!Configurando uma Subinterface da VLAN do Terceiro Usuário
		interface gigabitEthernet 0/0.13
			descrição Subinterface da VLAN do Terceiro Usuário
			encapsulamento dot1Q 13
			endereço IP 172.16.??.254 255.255.255.0
			saída

		!Configurando uma Subinterface da VLAN Wireless
		interface gigabitEthernet 0/0.15
			descrição Subinterface da VLAN Wireless
			encapsulamento dot1Q 15
			endereço IP 172.16.15.254 255.255.255.0
			fim
	Escreva

    Determinação do endereço IPv4 de Gateway do Router 2911
    Grupo-01: Subinterface: 10 IPv4: 172.16.10.254/24
                Subinterface: 11 IPv4: 172.16.11.254/24
                Subinterface: 12 IPv4: 172.16.12.254/24
                Subinterface: 13 IPv4: 172.16.13.254/24
                Subinterface: 15 IPv4: 172.16.15.254/24