BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS BaseTable

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS BaseTable
(
	Id    Int32,
	Value Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO BaseTable
(
	Id,
	Value
)
VALUES
(toInt32(1),toInt32(100))

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.Value
FROM
	BaseTable x
WHERE
	x.Id = toInt32(1)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	x.Id,
	x.Value
FROM
	BaseTable x
WHERE
	x.Id = toInt32(1) AND x.Value = toInt32(100)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS BaseTable

