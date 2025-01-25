BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS BaseTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS BaseTable
(
	Id    Int32,
	Value Int32,

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO BaseTable
(
	Id,
	Value
)
VALUES
(1,100)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.Value
FROM
	BaseTable x
WHERE
	x.Id = 1
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.Id,
	x.Value
FROM
	BaseTable x
WHERE
	x.Id = 1 AND x.Value = 100
LIMIT 1

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS BaseTable

