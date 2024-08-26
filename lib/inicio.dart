import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterMandante = 0;
  int _counterVisitante = 0;
  int _ultimaAdicaoMandante = 0;
  int _ultimaAdicaoVisitante = 0;

  void _incrementCounterMandante(int valor) {
    setState(() {
      _counterMandante += valor;
      _ultimaAdicaoMandante = valor;
      _ultimaAdicaoVisitante = 0;
    });
  }

  void _incrementCounterVisitante(int valor) {
    setState(() {
      _counterVisitante += valor;
      _ultimaAdicaoVisitante = valor;
      _ultimaAdicaoMandante = 0;
    });
  }

  void _decrementaUltima() {
    setState(() {
      _counterMandante -= _ultimaAdicaoMandante;
      _counterVisitante -= _ultimaAdicaoVisitante;
      _ultimaAdicaoMandante = 0;
      _ultimaAdicaoVisitante = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Placar
              Text(
                '${AppLocalizations.of(context)!.mandante}    $_counterMandante x $_counterVisitante    ${AppLocalizations.of(context)!.visitante}',
                style: TextStyle(
                  fontSize: 25, // Tamanho do texto
                  color: Colors.black, // Cor do texto
                  fontWeight: FontWeight.bold, // Negrito
                ),
              ),
              SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () => _incrementCounterMandante(1),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Cor do botão
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(
                            5), // Espaçamento horizontal e vertical
                        child: Text(
                          "${AppLocalizations.of(context)!.lance_livre}\n${AppLocalizations.of(context)!.mandante}",
                          textAlign: TextAlign.center, // Centraliza o texto
                          style: TextStyle(
                            color: Colors.white, // Cor do texto
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () => _incrementCounterMandante(2),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Cor do botão
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(
                            5), // Espaçamento horizontal e vertical
                        child: Text(
                          "${AppLocalizations.of(context)!.dois_pontos}\n${AppLocalizations.of(context)!.mandante}",
                          textAlign: TextAlign.center, // Centraliza o texto
                          style: TextStyle(
                            color: Colors.white, // Cor do texto
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () => _incrementCounterMandante(3),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Cor do botão
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(
                            5), // Espaçamento horizontal e vertical
                        child: Text(
                          "${AppLocalizations.of(context)!.tres_pontos}\n${AppLocalizations.of(context)!.mandante}",
                          textAlign: TextAlign.center, // Centraliza o texto
                          style: TextStyle(
                            color: Colors.white, // Cor do texto
                          ),
                        ),
                      ),
                    ),
                  ]),
              SizedBox(height: 10),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () => _incrementCounterVisitante(1),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Cor do botão
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(
                            5), // Espaçamento horizontal e vertical
                        child: Text(
                          "${AppLocalizations.of(context)!.lance_livre}\n${AppLocalizations.of(context)!.visitante}",
                          textAlign: TextAlign.center, // Centraliza o texto
                          style: TextStyle(
                            color: Colors.white, // Cor do texto
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () => _incrementCounterVisitante(2),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Cor do botão
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(
                            5), // Espaçamento horizontal e vertical
                        child: Text(
                          "${AppLocalizations.of(context)!.dois_pontos}\n${AppLocalizations.of(context)!.visitante}",
                          textAlign: TextAlign.center, // Centraliza o texto
                          style: TextStyle(
                            color: Colors.white, // Cor do texto
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () => _incrementCounterVisitante(3),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue, // Cor do botão
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(
                            5), // Espaçamento horizontal e vertical
                        child: Text(
                          "${AppLocalizations.of(context)!.tres_pontos}\n${AppLocalizations.of(context)!.visitante}",
                          textAlign: TextAlign.center, // Centraliza o texto
                          style: TextStyle(
                            color: Colors.white, // Cor do texto
                          ),
                        ),
                      ),
                    ),
                  ]),
              SizedBox(height: 10),
              if (_ultimaAdicaoMandante > 0 ||
                  _ultimaAdicaoVisitante > 0) // Verificação condicional
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 17),
                    ElevatedButton(
                      onPressed: _decrementaUltima,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey, // Cor do botão
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(
                            10), // Espaçamento horizontal e vertical
                        child: Text(
                          AppLocalizations.of(context)!.botao_voltar,
                          textAlign: TextAlign.center, // Centraliza o texto
                          style: TextStyle(
                            color: Colors.white, // Cor do texto
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ]),
      ),
    );
  }
}
