BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Transactions

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Transactions
(
	TransactionId   Int32,
	TransactionDate DateTime64(7),

	PRIMARY KEY (TransactionId)
)
ENGINE = MergeTree()
ORDER BY TransactionId

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	toInt32(1),
	toDateTime64('2020-02-29 17:14:55.1231234', 7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	toInt32(3),
	toDateTime64('2021-02-28 17:14:55.1231234', 7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	toInt32(4),
	toDateTime64('2019-02-28 17:14:55.1231234', 7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	toInt32(5),
	toDateTime64('2020-03-29 17:14:55.1231234', 7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	toInt32(6),
	toDateTime64('2020-01-29 17:14:55.1231234', 7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	toInt32(7),
	toDateTime64('2020-03-01 17:14:55.1231234', 7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	toInt32(8),
	toDateTime64('2020-02-28 17:14:55.1231234', 7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	toInt32(9),
	toDateTime64('2020-02-29 18:14:55.1231234', 7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	toInt32(10),
	toDateTime64('2020-02-29 16:14:55.1231234', 7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	toInt32(11),
	toDateTime64('2020-02-29 17:15:55.1231234', 7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	toInt32(12),
	toDateTime64('2020-02-29 17:13:55.1231234', 7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	toInt32(13),
	toDateTime64('2020-02-29 17:14:56.1231234', 7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	toInt32(14),
	toDateTime64('2020-02-29 17:14:54.1231234', 7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	toInt32(15),
	toDateTime64('2020-02-29 17:14:55.1241234', 7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Transactions
(
	TransactionId,
	TransactionDate
)
VALUES
(
	toInt32(16),
	toDateTime64('2020-02-29 17:14:55.1221234', 7)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Key_1,
	Count(*)
FROM
	(
		SELECT
			(DAYOFWEEK(addDays(selectParam.TransactionDate, 1))) - toInt32(1) as Key_1
		FROM
			Transactions selectParam
	) t1
GROUP BY
	t1.Key_1
ORDER BY
	t1.Key_1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Transactions

