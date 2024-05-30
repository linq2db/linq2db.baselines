BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS NumberLikeTestTable

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS NumberLikeTestTable
(
	IntNProp Nullable(Int32)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.IntNProp
FROM
	NumberLikeTestTable x
WHERE
	toString(x.IntNProp) LIKE '1%'
LIMIT 50

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	x.IntNProp
FROM
	NumberLikeTestTable x
WHERE
	toString(x.IntNProp) LIKE '1%'
LIMIT 50

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS NumberLikeTestTable

