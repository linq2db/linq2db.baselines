BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Transactions

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Transactions
(
	TransactionId   Int32,
	TransactionDate Date32,

	 PRIMARY KEY (TransactionId)
)
ENGINE = MergeTree()
ORDER BY TransactionId

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(toInt32(1),toDate32('2020-02-29')),
(toInt32(2),toDate32('2021-02-28')),
(toInt32(3),toDate32('2019-02-28')),
(toInt32(4),toDate32('2020-03-29')),
(toInt32(5),toDate32('2020-01-29')),
(toInt32(6),toDate32('2020-03-01')),
(toInt32(7),toDate32('2020-02-28')),
(toInt32(8),toDate32('2020-08-09')),
(toInt32(9),toDate32('2021-08-09')),
(toInt32(10),toDate32('2019-08-09')),
(toInt32(11),toDate32('2020-09-09')),
(toInt32(12),toDate32('2020-07-09')),
(toInt32(13),toDate32('2020-08-10')),
(toInt32(14),toDate32('2020-08-08'))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	addMonths(t.TransactionDate, toInt32(-2))
FROM
	Transactions t

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Transactions

