BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EnumCardinality

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS EnumCardinality
(
	Id        Int32,
	Property1 FixedString(1),
	Property2 Nullable(FixedString(1)),
	Property3 FixedString(1),
	Property4 Nullable(FixedString(1)),
	Property5 FixedString(1),
	Property6 Nullable(FixedString(1))
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO EnumCardinality
(
	Id,
	Property1,
	Property2,
	Property3,
	Property4,
	Property5,
	Property6
)
VALUES
(toInt32(1),'A','A','A','A','A','A'),
(toInt32(2),'B','B','B','B','B','B'),
(toInt32(3),'C','C','C','C','C','C')

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.Id,
	_.Property1,
	_.Property2,
	_.Property3,
	_.Property4,
	_.Property5,
	_.Property6
FROM
	EnumCardinality _
WHERE
	_.Property4 <= 'A'
LIMIT toInt32(2)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS EnumCardinality

