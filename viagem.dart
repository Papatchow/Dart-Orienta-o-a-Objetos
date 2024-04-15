import 'transporte.dart';

class Viagem{
  static String codigoTrabalho = "DUHSAUD12";
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};

  int _totalLocaisVisitados = 0;

  Viagem({required this.locomocao});

  printCodigo(){
    print(codigoTrabalho);
  }

void escolherMeioTransporte(Transporte locomocao){
  switch (locomocao){
    case Transporte.carro:
      print("Vou de CARRO para aventura!");
    case Transporte.bike:
      print("Vou de BIKE para aventura!");
    case Transporte.onibus:
      print("Vou de BUSÃO para aventura!");
    default:
      print("Estou indo para aventura, isso que importa!");
  }
}
 
 void visitar(String localVisita){
  registrosVisitados.add(localVisita);
  _totalLocaisVisitados += 1;
  }

  void registrarPrecoVisita(String local, dynamic preco){
    registrarPrecos[local] = preco;
  }

  int get consultarTotalLocaisVisitados{
    return _totalLocaisVisitados;
  }

  void set alterarLocaisVisitados(int novaQnt){
    if (novaQnt < 10){
      _totalLocaisVisitados = novaQnt;
    }else{
      print("Não é possível!");
    }
  }
}
