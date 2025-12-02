import 'package:flutter/material.dart';

class TipsPage extends StatelessWidget {
  const TipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dicas & Artigos'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildTipCard(
            context,
            'Rotina Matinal',
            'Comece o dia com energia',
            'Evite o celular nos primeiros 30 minutos. Beba um copo de água e faça um alongamento simples.',
            Icons.wb_sunny,
            Colors.orange,
          ),
          _buildTipCard(
            context,
            'Skincare Simples',
            'Cuidado básico e eficiente',
            'Lavar, hidratar e proteger. O protetor solar é o seu melhor amigo para um glow saudável a longo prazo.',
            Icons.face,
            Colors.pink,
          ),
          _buildTipCard(
            context,
            'Alimentação Consciente',
            'Nutrição sem neura',
            'Adicione uma fruta ou vegetal em cada refeição. Não é sobre cortar tudo, é sobre adicionar nutrientes.',
            Icons.restaurant,
            Colors.green,
          ),
          _buildTipCard(
            context,
            'Higiene do Sono',
            'Durma melhor, viva melhor',
            'Crie um ritual noturno. Luzes baixas e um livro ajudam o cérebro a desligar.',
            Icons.bedtime,
            Colors.indigo,
          ),
          _buildTipCard(
            context,
            'Movimento Diário',
            'Corpo em movimento',
            'Caminhar 20 minutos por dia já muda sua química cerebral e melhora a autoestima.',
            Icons.directions_walk,
            Colors.blue,
          ),
        ],
      ),
    );
  }

  Widget _buildTipCard(BuildContext context, String title, String subtitle, String content, IconData icon, Color color) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: color.withOpacity(0.1),
                  child: Icon(icon, color: color),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        subtitle,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey[600],
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              content,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text('Ler mais'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
