import 'package:flutter/material.dart';

void main() {
  runApp(const AcademiaApp());
}

class AcademiaApp extends StatelessWidget {
  const AcademiaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Saúde Melhor',
      theme: ThemeData.dark(),
      home: const Inicio(),
    );
  }
}

// MENU
class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int pagina = 0;

  final telas = [const Home(), const Treinos(), const Perfil()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: telas[pagina],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: const Color.fromARGB(255, 32, 184, 113),
        unselectedItemColor: Colors.grey,
        currentIndex: pagina,

        onTap: (index) {
          setState(() {
            pagina = index;
          });
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Treinos',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}

// HOME
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> tarefas = ['Se hidratar', 'Guardar Anilhas', 'Musculação'];

  List<bool> feitas = [false, false, false];

  // ADICIONAR
  void adicionarTarefa() {
    TextEditingController campo = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.grey[900],

          title: const Text('Nova tarefa'),

          content: TextField(
            controller: campo,
            decoration: const InputDecoration(hintText: 'Digite a tarefa'),
          ),

          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),

            ElevatedButton(
              onPressed: () {
                if (campo.text.isNotEmpty) {
                  setState(() {
                    tarefas.add(campo.text);
                    feitas.add(false);
                  });

                  Navigator.pop(context);
                }
              },
              child: const Text('Adicionar'),
            ),
          ],
        );
      },
    );
  }

  // EXCLUIR
  void excluirTarefa(int index) {
    setState(() {
      tarefas.removeAt(index);
      feitas.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        title: const Text('SAÚDE MELHOR'),
        backgroundColor: Colors.black,
      ),

      // BOTÃO +
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 32, 184, 113),
        onPressed: adicionarTarefa,
        child: const Icon(Icons.add),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(15),
              ),

              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Icon(
                    Icons.fitness_center,
                    color: const Color.fromARGB(255, 32, 184, 113),
                    size: 35,
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Bora treinar?',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),

                  Text(
                    'O melhor horário para treinar é agora.',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Tarefas de hoje:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: tarefas.length,

                itemBuilder: (context, index) {
                  return Card(
                    color: Colors.grey[900],

                    child: CheckboxListTile(
                      title: Text(tarefas[index]),

                      value: feitas[index],

                      activeColor: const Color.fromARGB(255, 32, 184, 113),

                      onChanged: (valor) {
                        setState(() {
                          feitas[index] = valor!;
                        });
                      },

                      secondary: IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: const Color.fromARGB(255, 32, 184, 113),
                        ),

                        onPressed: () {
                          excluirTarefa(index);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// TREINOS
class Treinos extends StatelessWidget {
  const Treinos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        title: const Text('TREINOS'),
        backgroundColor: Colors.black,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          Card(
            color: Colors.grey[900],

            child: ListTile(
              leading: const Icon(
                Icons.fitness_center,
                color: const Color.fromARGB(255, 32, 184, 113),
              ),

              title: const Text('Peito e Tríceps'),

              subtitle: const Text('Supino, crucifixo e tríceps'),
            ),
          ),

          Card(
            color: Colors.grey[900],

            child: ListTile(
              leading: const Icon(
                Icons.fitness_center,
                color: const Color.fromARGB(255, 32, 184, 113),
              ),

              title: const Text('Costas e Bíceps'),

              subtitle: const Text('Remada, puxada e rosca'),
            ),
          ),

          Card(
            color: Colors.grey[900],

            child: ListTile(
              leading: const Icon(
                Icons.fitness_center,
                color: const Color.fromARGB(255, 32, 184, 113),
              ),

              title: const Text('Pernas'),

              subtitle: const Text('Agachamento, leg press e extensora'),
            ),
          ),
        ],
      ),
    );
  }
}

// PERFIL
class Perfil extends StatelessWidget {
  const Perfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(
        title: const Text('PERFIL'),
        backgroundColor: Colors.black,
      ),

      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: const Color.fromARGB(255, 32, 184, 113),

              child: Icon(Icons.person, size: 60, color: Colors.white),
            ),

            SizedBox(height: 20),

            Text(
              'Cauê',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),

            Text('Aluno da academia', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
