BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EnumCardinality

BeforeExecute
-- ClickHouse.Client ClickHouse

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
-- ClickHouse.Client ClickHouse

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
(
	1,
	'A',
	'A',
	'A',
	'A',
	'A',
	'A'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

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
(
	2,
	'B',
	'B',
	'B',
	'B',
	'B',
	'B'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

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
(
	3,
	'C',
	'C',
	'C',
	'C',
	'C',
	'C'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Property1,
	t1.Property2,
	t1.Property3,
	t1.Property4,
	t1.Property5,
	t1.Property6
FROM
	EnumCardinality t1
WHERE
	t1.Property4 <= 'A'
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EnumCardinality

