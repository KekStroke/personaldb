About Blockchain .
. It is a shared, immutable ledger (реестр) that facilitates the process of recording transactions and tracking assets in a business network.

Blockchain Network .
  Key Characteristics .
    Consensus .
    . All participants must agree on validity of a transaction for transaction to become valid.
    Provenance .
    . Participants know where the asset came from and how its ownership has changed over time.
    Immutability .
    . No participant can tamper with a transaction after it has been recorded to the ledger.
    Finality .
    . A `single, shared ledger` provides one place to go to `determine the ownership` of an asset or the `completion of a transaction`.

Blockchain Structure .
  Block .
  . Содержит перечень транзакций, занесенных в реестр за некоторый период.
  . Размер блока, период накопления и инициирующее запись блока событие может отличаться в разных реализациях блокчейна.
  Chain .
  . Хеш связывает один блок c другим, математически объединяя их в `единую цепь`.
  . Хеш очередного блока создается c использованием данных предыдущего блока. Это позволяет объединить их в цепь.
  . B качества криптографической функции обычно имеет длину 32 символа и однозначно представляет данные.
  . Как правило, используется алгоритм [SHA-256].
  Network .

Transaction .
. Запись некоторых данных.
. Назначение ценности данным транзакции используется для интерпретации того, что данные означают.

Cryptocurrency .
. Digital token that has some market price.

Smart Contract .
. A digital agreement or set of rules that govern a transaction.

Типы Блокчейна .
  Публичные Сети .
  . Обычно очень `большие и децентрализованные`.
  . Любой может принять участие в работе сети на любом уровне.
  . Обычно `лучше обеспечивают защиту и неизменяемость`.
  . Обычно `медленнее` и эксплуатируются `дороже`.
  . Манипулируют защищенной криптовалютой и имеют `строгие` `ограничения на размер сохраняемых` в записи `данных`.
  Эксклюзивные Сети .
  . `Открыты для широкой публики`, но `участие` в их работе `контролируется`.
  . Часто используют криптовалюту, но за приложения, работающие с  сетью `может взиматься небольшая плата`.
  . `Упрощает масштабирование` проекта и повышение объема транзакций.
  . Могут `работать очень быстро` при `малом времени подтверждения` транзакций.
  . Обычно допускают больший объем сохраняемых в записи дынных чем публичные сети.
  Частные Сети .
  . Используются `доверенными сторонами`.
  . Могут быть полностью невидимыми для широкой публики.
  . Обычно `чрезвычайно быстрые` при `полном отсутствии времени ожидания`.
  . `Малая стоимость эксплуатации`.
  . Быстрая развертка сети.
  . Не используют криптовалюты.
  . `Не обеспечивают неизменяемости и защищенности` как децентрализованные сети.
  . `Объем` сохраняемых данных может быть `неограниченным`.

