!Acessando o modo exec user
enable

	!Acessar modo de configuração global
	configure terminal
		
	!Configuração da interface Serial0/0/0
	interface serial 0/0/0
	
		!Descrição da Interface
		description Interface Grupo-01 para Grupo-02
		
		!Configuração do endereçamento IPv4
		!Verificar a tabela de endereçamento IP dos Grupos
		!Sempre vai ser o Endereço IPv4 IMPAR na Interface Serial 0/0/0
		!OBSERVAÇÃO IMPORTANTE: veja o arquivo 00-DocumentacaoDaRede.txt
		ip address 192.168.1.1 255.255.255.252
		
		!Configurando o Clock Rate, Velocidade do Link
		clock rate 64000
		
		!Configurando a Largura de Banda
		bandwidth 64
		
		!Habilitando a interface
		no shutdown
		
		!Saindo das configurações da interface
		exit
		
	!Configuração da interface Serial0/0/1
	interface serial 0/0/1
	
		!Descrição da Interface
		description Interface Grupo-06 para Grupo-01
		
		!Configuração do endereçamento IP
		!Verificar a tabela de endereçamento IP dos Grupos
		!Sempre vai ser o Endereço IPv4 PAR na Interface Serial 0/0/1
		!OBSERVAÇÃO IMPORTANTE: veja o arquivo 00-DocumentacaoDaRede.txt
		ip address 192.168.1.22 255.255.255.252
		
		!Configurando a Largura de Banda
		bandwidth 64
		
		!Habilitando a interface
		no shutdown
		
		!Saindo das configurações da interface
		end
