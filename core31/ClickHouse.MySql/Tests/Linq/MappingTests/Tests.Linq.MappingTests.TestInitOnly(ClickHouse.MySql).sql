BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS WithInitOnly

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS WithInitOnly
(
	BaseValue Nullable(String),
	Id        Int32,
	Value     Nullable(String),

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO WithInitOnly
(
	BaseValue,
	Id,
	Value
)
VALUES
(
	'OneBase',
	toInt32(1),
	'One'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO WithInitOnly
(
	BaseValue,
	Id,
	Value
)
VALUES
(
	'TwoBase',
	toInt32(2),
	'Two'
)

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.BaseValue,
	t1.Id,
	t1.Value
FROM
	WithInitOnly t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value,
	r.BaseValue
FROM
	WithInitOnly r
ORDER BY
	r.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS WithInitOnly

