BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Transactions

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Transactions
(
	TransactionId   Int32,
	TransactionDate DateTime64(7),

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
(1,toDateTime64('2020-02-29 17:14:55.1231234', 7)),
(3,toDateTime64('2021-02-28 17:14:55.1231234', 7)),
(4,toDateTime64('2019-02-28 17:14:55.1231234', 7)),
(5,toDateTime64('2020-03-29 17:14:55.1231234', 7)),
(6,toDateTime64('2020-01-29 17:14:55.1231234', 7)),
(7,toDateTime64('2020-03-01 17:14:55.1231234', 7)),
(8,toDateTime64('2020-02-28 17:14:55.1231234', 7)),
(9,toDateTime64('2020-02-29 18:14:55.1231234', 7)),
(10,toDateTime64('2020-02-29 16:14:55.1231234', 7)),
(11,toDateTime64('2020-02-29 17:15:55.1231234', 7)),
(12,toDateTime64('2020-02-29 17:13:55.1231234', 7)),
(13,toDateTime64('2020-02-29 17:14:56.1231234', 7)),
(14,toDateTime64('2020-02-29 17:14:54.1231234', 7)),
(15,toDateTime64('2020-02-29 17:14:55.1241234', 7)),
(16,toDateTime64('2020-02-29 17:14:55.1221234', 7))

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	toInt32(date_diff('minute', t.TransactionDate, addMinutes(t.TransactionDate, toFloat64(100))))
FROM
	Transactions t

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Transactions

