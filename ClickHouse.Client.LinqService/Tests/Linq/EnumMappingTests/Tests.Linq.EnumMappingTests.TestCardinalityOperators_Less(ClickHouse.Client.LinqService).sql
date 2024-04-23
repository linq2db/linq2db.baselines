﻿BeforeExecute
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
	_.Property1 < 'B'
LIMIT 2

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS EnumCardinality

