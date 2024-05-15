BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS WithInitOnly

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.BaseValue,
	t1.Value
FROM
	WithInitOnly t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value,
	r.BaseValue
FROM
	WithInitOnly r
ORDER BY
	r.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS WithInitOnly

