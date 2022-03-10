About Blockchain .
. It is a shared, immutable ledger (реестр) that facilitates
  the process of recording transactions and tracking assets
  in a business network.

Blockchain Network .
  Key Characteristics .
    Consensus .
    . All participants must agree on validity of a transaction
      for transaction to become valid.
    Provenance .
    . Participants know where the asset came from and how its
      ownership has changed over time.
    Immutability .
    . No participant can tamper with a transaction after it
      has been recorded to the ledger.
    Finality .
    . A `single, shared ledger` provides one place to go to
      `determine the ownership` of an asset or the
      `completion of a transaction`.

Blockchain Structure .
  Block .
  . Содержит перечень транзакций, занесенных в реестр за
    некоторый период.
  . Размер блока, период накопления и инициирующее запись блока
    событие может отличаться в разных реализациях блокчейна.
  Chain .
  . Хеш связывает один блок c другим, математически объединяя их
    в `единую цепь`.
  . Хеш очередного блока создается c использованием данных
    предыдущего блока. Это позволяет объединить их в цепь.
  . B качества криптографической функции обычно имеет длину 32
    символа и однозначно представляет данные.
  . Как правило, используется алгоритм [SHA-256].
  Network .

. Transaction .
. Запись некоторых данных.
. Назначение ценности данным транзакции используется для
  интерпретации того, что данные означают.

Cryptocurrency .
. Digital token that has some market price.

Smart Contract .
. A digital agreement or set of rules that govern a transaction.
