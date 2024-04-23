BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WithInitOnly

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS WithInitOnly
(
	Id        Int32,
	BaseValue Nullable(String),
	Value     Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO WithInitOnly
(
	Id,
	BaseValue,
	Value
)
VALUES
(
	1,
	'OneBase',
	'One'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO WithInitOnly
(
	Id,
	BaseValue,
	Value
)
VALUES
(
	2,
	'TwoBase',
	'Two'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.BaseValue,
	t1.Value
FROM
	WithInitOnly t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Id,
	r.Value,
	r.BaseValue
FROM
	WithInitOnly r
ORDER BY
	r.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS WithInitOnly

