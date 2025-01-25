BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS GroupSampleClass

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS GroupSampleClass
(
	Id1   Int32,
	Id2   Int32,
	Value Int32
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	1,
	1,
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	2,
	2,
	0
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	3,
	0,
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	4,
	1,
	0
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	5,
	2,
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	6,
	0,
	0
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	7,
	1,
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	8,
	2,
	0
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	9,
	0,
	1
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO GroupSampleClass
(
	Id1,
	Id2,
	Value
)
VALUES
(
	10,
	1,
	0
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	GROUPING(g_2.Id1),
	g_2.Id1,
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			g_1.Id1 as Id1,
			g_1.Id2 as Id2,
			g_1.Value as Value_1
		FROM
			GroupSampleClass g_1
	) g_2
GROUP BY CUBE (
	g_2.Id1,
	g_2.Id2
)

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS GroupSampleClass

