import 'package:flutter/material.dart';

void main() {
  runApp(NubankApp());
}

class NubankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank UI',
      theme: ThemeData(
        primaryColor: Color(0xFF8A05BE),
      ),
      home: NubankHomePage(),
    );
  }
}

class NubankHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8A05BE),
        leading: IconButton(
          icon: Icon(Icons.person_outline),
          color: Color(0xFFF5F5F5),
          onPressed: () {
            // Ação ao clicar no ícone de perfil
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.visibility_outlined),
            color: Color(0xFFF5F5F5),
            onPressed: () {
              // Ação ao clicar no ícone de visibilidade
            },
          ),
          IconButton(
            icon: Icon(Icons.question_mark_rounded),
            color: Color(0xFFF5F5F5),
            onPressed: () {
              // Ação ao clicar no ícone de ajuda
            },
          ),
          IconButton(
            icon: Icon(Icons.mark_email_read_outlined),
            color: Color(0xFFF5F5F5),
            onPressed: () {
              // Ação ao clicar no ícone de mensagens
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Saldo da Conta
              Text(
                'Conta',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'R\$1000,00',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),

              // Botões da conta
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.pix),
                        onPressed: () {
                          // Ação ao clicar na área Pix
                        },
                      ),
                      Text('Área Pix'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.money),
                        onPressed: () {
                          // Ação ao clicar na área Pagamentos
                        },
                      ),
                      Text('Pagamentos'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.qr_code),
                        onPressed: () {
                          // Ação ao clicar na área QR Code
                        },
                      ),
                      Text('QRCode'),
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.attach_money),
                        onPressed: () {
                          // Ação ao clicar na área Transferir
                        },
                      ),
                      Text('Transferir'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),

              // Meus Cartões
              GestureDetector(
                onTap: () {
                  // Ação ao clicar na seção "Meus Cartões"
                },
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.grey[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Meus Cartões',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, size: 16), // Setinha
                    ],
                  ),
                ),
              ),
              Divider(), // Linha separadora
              GestureDetector(
                onTap: () {
                  // Ação ao clicar na área "Guarde seu dinheiro"
                },
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.grey[200],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Guarde seu dinheiro em caixinhas\nAcessando a área de planejamento',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF8A05BE),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, size: 16), // Setinha
                    ],
                  ),
                ),
              ),
              Divider(), // Linha separadora
              SizedBox(height: 30),

              // Cartão de Crédito
              Text(
                'Cartão de Crédito',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 10),
              Text(
                'Fatura Fechada',
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
              SizedBox(height: 10),
              Text(
                'R\$2.123,39',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 15),
              Text(
                'Vencimento dia 15',
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  // Ação ao clicar em "Renegociar"
                },
                child: Text(
                  'Renegociar',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF8A05BE),
                ),
              ),
              SizedBox(height: 30),
              Divider(), // Linha separadora

              // Empréstimo
              Text(
                'Empréstimo',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 10),
              Text(
                'Tudo certo! Você está em dia',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 30),

              // Descubra Mais
              Text(
                'Descubra Mais',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  // Ação ao clicar na área "Seguro de Vida"
                },
                child: Container(
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200],
                  ),
                  child: Row(
                    children: [
                      // Imagem ilustrativa
                      Image.asset(
                        'assets/seguroVida.png', // Adicionar corretamente o caminho da imagem
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Seguro de Vida',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              'Cuide bem de quem você ama de um jeito simples',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: () {
                                // Ação ao clicar em "Conhecer"
                              },
                              child: Text('Conhecer'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF8A05BE),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
