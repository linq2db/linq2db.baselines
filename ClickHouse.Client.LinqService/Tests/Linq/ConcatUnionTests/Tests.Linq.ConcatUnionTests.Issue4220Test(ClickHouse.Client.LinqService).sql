BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConcreteA

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ConcreteA
(
	Id    Int32,
	AOnly Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConcreteB

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS ConcreteB
(
	Id    Int32,
	BOnly Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO ConcreteA
(
	Id,
	AOnly
)
VALUES
(
	1,
	'a only'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO ConcreteB
(
	Id,
	BOnly
)
VALUES
(
	2,
	'b only'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	e.Id,
	e.AOnly,
	toInt32(NULL) as Id_1,
	toString(NULL) as BOnly
FROM
	ConcreteA e
UNION ALL
SELECT
	toInt32(NULL) as Id,
	toString(NULL) as AOnly,
	e_1.Id as Id_1,
	e_1.BOnly as BOnly
FROM
	ConcreteB e_1

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConcreteB

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS ConcreteA

