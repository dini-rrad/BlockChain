contract DemoP2PKH {
  Ripemd160 pubKeyHash;

  constructor(Ripemd160 pubKeyHash) {
      this.pubKeyHash = pubKeyHash;
  }

  public function unlock(Sig sig, PubKey pubKey) {
      require(hash160(pubKey) == this.pubKeyHash);
      require(checkSig(sig, pubKey));
  }
}
