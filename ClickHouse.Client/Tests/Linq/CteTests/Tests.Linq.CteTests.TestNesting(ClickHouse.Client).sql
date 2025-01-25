BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS NestingA

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS NestingA
(
	Property1 Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS NestingB

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS NestingB
(
	Property1 Nullable(String),
	Property2 Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS NestingC

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS NestingC
(
	Property1 Nullable(String),
	Property2 Nullable(String),
	Property3 Nullable(String)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

WITH CTE_1 AS
(
	SELECT
		a.Property2 as Property1
	FROM
		NestingC a
)
SELECT
	c2.Property1,
	t_1.Property2,
	t_1.Property3
FROM
	CTE_1 c2
		CROSS JOIN NestingC t
		CROSS JOIN NestingC t_1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS NestingC

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS NestingB

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS NestingA

