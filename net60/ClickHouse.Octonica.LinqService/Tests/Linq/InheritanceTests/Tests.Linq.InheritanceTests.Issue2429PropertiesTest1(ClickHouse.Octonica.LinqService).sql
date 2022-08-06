BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS BaseTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS BaseTable
(
	Value Int32,
	Id    Int32,

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO BaseTable
(
	Value,
	Id
)
VALUES
(
	toInt32(100),
	toInt32(1)
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Value,
	x.Id
FROM
	BaseTable x
WHERE
	x.Id = toInt32(1)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Value,
	x.Id
FROM
	BaseTable x
WHERE
	x.Id = toInt32(1) AND x.Value = toInt32(100)
LIMIT toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS BaseTable

