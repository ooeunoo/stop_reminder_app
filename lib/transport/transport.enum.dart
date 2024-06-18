enum Transport {
  cityBus("시내버스"),
  expressBus("시외/고속버스"),
  subway("지하철"),
  train("기차(KTX, ITX)"),
  ;

  const Transport(this.ko);

  final String ko;
}
