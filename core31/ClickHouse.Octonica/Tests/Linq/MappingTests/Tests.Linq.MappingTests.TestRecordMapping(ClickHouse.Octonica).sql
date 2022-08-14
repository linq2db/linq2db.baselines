BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Record

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Record
(
	BaseValue Nullable(String),
	Id        Int32,
	Value     Nullable(String),

	 PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO Record
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
-- ClickHouse.Octonica ClickHouse

INSERT INTO Record
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
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.BaseValue,
	t1.Id,
	t1.Value
FROM
	Record t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	r.Id,
	r.Value,
	r.BaseValue
FROM
	Record r
ORDER BY
	r.Id

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Record

