import 'package:flutter/material.dart'; // Importa a biblioteca de material do Flutter

void main() {
  runApp(NubankApp()); // Inicia o aplicativo chamando a classe NubankApp
}

class NubankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nubank UI', // Define o título do aplicativo
      theme: ThemeData(
        primaryColor: Color(0xFF8A05BE), // Define a cor primária do tema
      ),
      home: NubankHomePage(), // Define a página inicial do aplicativo
    );
  }
}

class NubankHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8A05BE), // Define a cor de fundo da AppBar
        leading: IconButton(
          icon: Icon(Icons.person_outline), // Ícone do botão de perfil
          color: Color(0xFFF5F5F5), // Cor do ícone
          onPressed: () {
            // Ação ao clicar no ícone de perfil
          },
        ),
        actions: [
          // Botões adicionais na AppBar
          IconButton(
            icon: Icon(Icons.visibility_outlined), // Ícone para visibilidade
            color: Color(0xFFF5F5F5), // Cor do ícone
            onPressed: () {
              // Ação ao clicar no ícone de visibilidade
            },
          ),
          IconButton(
            icon: Icon(Icons.question_mark_rounded), // Ícone de ajuda
            color: Color(0xFFF5F5F5), // Cor do ícone
            onPressed: () {
              // Ação ao clicar no ícone de ajuda
            },
          ),
          IconButton(
            icon: Icon(Icons.mark_email_read_outlined), // Ícone para mensagens
            color: Color(0xFFF5F5F5), // Cor do ícone
            onPressed: () {
              // Ação ao clicar no ícone de mensagens
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        // Permite que o conteúdo da página seja rolável
        child: Padding(
          padding: const EdgeInsets.all(
              16.0), // Define um espaço interno ao redor do conteúdo
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Alinha o conteúdo à esquerda
            children: [
              // Seção do saldo da conta
              Text(
                'Conta', // Título da seção
                style: TextStyle(
                  fontSize: 24, // Tamanho da fonte
                  fontWeight: FontWeight.bold, // Estilo da fonte em negrito
                ),
              ),
              SizedBox(height: 10), // Espaço entre os widgets
              Text(
                'R\$1000,00', // Saldo da conta
                style: TextStyle(
                  fontSize: 26, // Tamanho da fonte
                  fontWeight: FontWeight.bold, // Estilo da fonte em negrito
                ),
              ),
              SizedBox(height: 30), // Espaço entre os widgets

              // Linha de botões de ação da conta
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Distribui os ícones uniformemente
                children: [
                  Column(
                    // Botão da área Pix
                    children: [
                      IconButton(
                        icon: Icon(Icons.pix), // Ícone do botão Pix
                        onPressed: () {
                          // Ação ao clicar na área Pix
                        },
                      ),
                      Text('Área Pix'), // Texto abaixo do ícone
                    ],
                  ),
                  Column(
                    // Botão da área Pagamentos
                    children: [
                      IconButton(
                        icon: Icon(Icons.money), // Ícone do botão Pagamentos
                        onPressed: () {
                          // Ação ao clicar na área Pagamentos
                        },
                      ),
                      Text('Pagamentos'), // Texto abaixo do ícone
                    ],
                  ),
                  Column(
                    // Botão da área QR Code
                    children: [
                      IconButton(
                        icon: Icon(Icons.qr_code), // Ícone do botão QR Code
                        onPressed: () {
                          // Ação ao clicar na área QR Code
                        },
                      ),
                      Text('QRCode'), // Texto abaixo do ícone
                    ],
                  ),
                  Column(
                    // Botão da área Transferir
                    children: [
                      IconButton(
                        icon: Icon(
                            Icons.attach_money), // Ícone do botão Transferir
                        onPressed: () {
                          // Ação ao clicar na área Transferir
                        },
                      ),
                      Text('Transferir'), // Texto abaixo do ícone
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30), // Espaço entre os widgets

              // Seção "Meus Cartões"
              GestureDetector(
                onTap: () {
                  // Ação ao clicar na seção "Meus Cartões"
                },
                child: Container(
                  padding:
                      const EdgeInsets.all(16.0), // Espaço interno do container
                  color: Colors.grey[200], // Cor de fundo do container
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Distribui o conteúdo uniformemente
                    children: [
                      Text(
                        'Meus Cartões', // Título da seção
                        style: TextStyle(
                          fontWeight:
                              FontWeight.bold, // Estilo da fonte em negrito
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,
                          size: 16), // Ícone de seta para indicar navegação
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
                  padding:
                      const EdgeInsets.all(16.0), // Espaço interno do container
                  color: Colors.grey[200], // Cor de fundo do container
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceBetween, // Distribui o conteúdo uniformemente
                    children: [
                      Text(
                        'Guarde seu dinheiro em caixinhas\nAcessando a área de planejamento', // Mensagem informativa
                        style: TextStyle(
                          fontWeight:
                              FontWeight.bold, // Estilo da fonte em negrito
                          color: Color(0xFF8A05BE), // Cor do texto
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,
                          size: 16), // Ícone de seta para indicar navegação
                    ],
                  ),
                ),
              ),
              Divider(), // Linha separadora
              SizedBox(height: 30), // Espaço entre os widgets

              // Seção do Cartão de Crédito
              Text(
                'Cartão de Crédito', // Título da seção
                style: TextStyle(fontSize: 24), // Tamanho da fonte
              ),
              SizedBox(height: 10), // Espaço entre os widgets
              Text(
                'Fatura Fechada', // Status da fatura
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54), // Tamanho e cor da fonte
              ),
              SizedBox(height: 10), // Espaço entre os widgets
              Text(
                'R\$2.123,39', // Valor da fatura
                style: TextStyle(fontSize: 24), // Tamanho da fonte
              ),
              SizedBox(height: 15), // Espaço entre os widgets
              Text(
                'Vencimento dia 15', // Data de vencimento
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black54), // Tamanho e cor da fonte
              ),
              SizedBox(height: 15), // Espaço entre os widgets
              ElevatedButton(
                onPressed: () {
                  // Ação ao clicar em "Renegociar"
                },
                child: Text(
                  'Renegociar', // Texto do botão
                  style: TextStyle(
                      fontSize: 18, color: Colors.black), // Estilo do texto
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF8A05BE), // Cor de fundo do botão
                ),
              ),
              SizedBox(height: 30), // Espaço entre os widgets
              Divider(), // Linha separadora

              // Seção de Empréstimo
              Text(
                'Empréstimo', // Título da seção
                style: TextStyle(fontSize: 24), // Tamanho da fonte
              ),
              SizedBox(height: 10), // Espaço entre os widgets
              Text(
                'Tudo certo! Você está em dia', // Mensagem sobre o empréstimo
                style: TextStyle(fontSize: 18), // Tamanho da fonte
              ),
              SizedBox(height: 30), // Espaço entre os widgets

              // Seção "Descubra Mais"
              Text(
                'Descubra Mais', // Título da seção
                style: TextStyle(fontSize: 24), // Tamanho da fonte
              ),
              SizedBox(height: 10), // Espaço entre os widgets
              GestureDetector(
                onTap: () {
                  // Ação ao clicar na área "Seguro de Vida"
                },
                child: Container(
                  padding:
                      const EdgeInsets.all(10.0), // Espaço interno do container
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(10), // Bordas arredondadas
                    color: Colors.grey[200], // Cor de fundo do container
                  ),
                  child: Row(
                    children: [
                      // Imagem ilustrativa do Seguro de Vida
                      Image.asset(
                        'assets/seguroVida.png', // Caminho da imagem
                        width: 100, // Largura da imagem
                        height: 200, // Altura da imagem
                      ),
                      SizedBox(width: 10), // Espaço entre a imagem e o texto
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .start, // Alinha o conteúdo à esquerda
                          children: [
                            Text(
                              'Seguro de Vida', // Título da seção
                              style: TextStyle(
                                fontSize: 20, // Tamanho da fonte
                                fontWeight: FontWeight
                                    .bold, // Estilo da fonte em negrito
                              ),
                            ),
                            SizedBox(height: 5), // Espaço entre os widgets
                            Text(
                              'Cuide bem de quem você ama de um jeito simples', // Descrição do seguro
                              style: TextStyle(
                                fontSize: 18, // Tamanho da fonte
                                color: Colors.black54, // Cor do texto
                              ),
                            ),
                            SizedBox(height: 10), // Espaço entre os widgets
                            ElevatedButton(
                              onPressed: () {
                                // Ação ao clicar em "Conhecer"
                              },
                              child: Text('Conhecer'), // Texto do botão
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color(0xFF8A05BE), // Cor de fundo do botão
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
