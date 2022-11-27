BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue3323Table

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue3323Table
(
	Id       Int32,
	FistName Nullable(String),
	LastName Nullable(String),
	Text     String,

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Issue3323Table
(
	Id,
	FistName,
	LastName,
	Text
)
VALUES
(
	toInt32(1),
	'one',
	'two',
	'text'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Id,
	concat(r.FistName, ' ', r.LastName)
FROM
	Issue3323Table r
UNION ALL
SELECT
	r_1.Id + toInt32(1),
	r_1.Text
FROM
	Issue3323Table r_1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Id + toInt32(1),
	r.Text
FROM
	Issue3323Table r
UNION ALL
SELECT
	r_1.Id,
	concat(r_1.FistName, ' ', r_1.LastName)
FROM
	Issue3323Table r_1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue3323Table

