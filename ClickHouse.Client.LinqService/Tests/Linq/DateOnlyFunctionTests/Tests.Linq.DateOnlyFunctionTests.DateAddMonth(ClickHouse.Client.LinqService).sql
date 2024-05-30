BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Transactions

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Transactions
(
	TransactionId   Int32,
	TransactionDate Date32,

	PRIMARY KEY (TransactionId)
)
ENGINE = MergeTree()
ORDER BY TransactionId

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	1,
	toDate32('2020-02-29')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	2,
	toDate32('2021-02-28')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	3,
	toDate32('2019-02-28')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	4,
	toDate32('2020-03-29')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	5,
	toDate32('2020-01-29')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	6,
	toDate32('2020-03-01')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	7,
	toDate32('2020-02-28')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	8,
	toDate32('2020-08-09')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	9,
	toDate32('2021-08-09')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	10,
	toDate32('2019-08-09')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	11,
	toDate32('2020-09-09')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	12,
	toDate32('2020-07-09')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	13,
	toDate32('2020-08-10')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	14,
	toDate32('2020-08-08')
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	addMonths(t.TransactionDate, 2)
FROM
	Transactions t

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Transactions

