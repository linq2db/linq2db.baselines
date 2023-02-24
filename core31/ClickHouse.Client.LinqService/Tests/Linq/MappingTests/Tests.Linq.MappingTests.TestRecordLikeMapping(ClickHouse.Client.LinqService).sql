BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS RecordLike

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS RecordLike
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

INSERT INTO RecordLike
(
	Id,
	BaseValue,
	Value
)
VALUES
(
	toInt32(1),
	'OneBase',
	'One'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO RecordLike
(
	Id,
	BaseValue,
	Value
)
VALUES
(
	toInt32(2),
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
	RecordLike t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	r.Id,
	r.Value,
	r.BaseValue
FROM
	RecordLike r
ORDER BY
	r.Id

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS RecordLike

