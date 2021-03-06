========================== VLAN MUNDIAL ================================

#02_ Determinação das Subredes e VLAN de cada Grupo.
    Grupo-01:   Subredes:   172.16.10.0/24   VLAN:  10  -   SVI-G01
                Subredes:   172.16.11.0/24   VLAN:  11  -   LUAN
                Subredes:   172.16.12.0/24   VLAN:  12  -   PABLO
                Subredes:   172.16.13.0/24   VLAN:  13  -   LUIZ
                Subredes:   172.16.15.0/24   VLAN:  15  -   Sem-fio (WI-FI)

                
		!Criação da VLAN padrão
		vlan 10
			
			!Nome da VLAN padrão
			name svig01?
		vlan 11
			name luan 
		vlan 12
			name pablo 
		vlan 13
			name luiz
		
		vlan 15
			name wi-fi
			exit

		!Configurando a Interface de Acesso a VLAN do Primeiro Usuário
		interface fastEthernet 0/2
			
			!Configurando a Interface de Acesso a VLAN
			description Interface de Acesso da VLAN ?? do Primeiro Usuário
			
			!Configurando o Modo de Acesso da Interface
			switchport mode access
			
			!Configurando o Acesso a VLAN
			switchport access vlan ??
			
			exit
		
		!Configurando a Interface de Acesso a VLAN do Segundo Usuário
		interface fastEthernet 0/3
			description Interface de Acesso da VLAN ?? do Segundo Usuário
			switchport mode access
			switchport access vlan ??
			exit

		!Configurando a Interface de Acesso a VLAN do Terceiro Usuário
		interface fastEthernet 0/4
			description Interface de Acesso da VLAN ?? do Terceiro Usuário
			switchport mode access
			switchport access vlan ??
			exit

		!Configurando a Interface de Acesso a VLAN do Quarto Usuário
		interface fastEthernet 0/5
			description Interface de Acesso da VLAN ?? do Quarto Usuário
			switchport mode access
			switchport access vlan ??
			exit

		!Configurando a Interface de Acesso a VLAN da Rede Sem-Fio (Wi-Fi/Wireless)
		interface fastEthernet 0/6
			description Interface de Acesso da VLAN ?? Wireless
			switchport mode access
			switchport access vlan ??
			exit
		
		!Desativando as Interfaces que não serão utilizadas no SWITCH Layer 3 3560
		interface range fastEthernet 0/7 - 23
			shutdown
			exit

		!Configurando a Interface de Trunk com o ROUTER 2911
		interface fastEthernet 0/24
			description Interface de Trunk com o Router 2911 do Grupo-0?
			switchport trunk encapsulation dot1q
			switchport mode trunk
		end

!Salvando as informações
copy running-config startup-config
	
!Comandos para visualização das informações:
show running-config
show vlan brief
show vlan id ??
show vlan name ??
show interface status
show interface trunk
show ip interface brief
show interfaces fastEthernet 0/24 status
show interfaces fastEthernet 0/24 switchport