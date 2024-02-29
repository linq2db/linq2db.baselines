﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Record

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Record
(
	Id        Int32,
	BaseValue Nullable(String),
	Value     Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

INSERT INTO Record
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
-- ClickHouse.MySql ClickHouse

INSERT INTO Record
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
-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.BaseValue,
	t1.Value
FROM
	Record t1
ORDER BY
	t1.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	r.Id,
	r.Value,
	r.BaseValue
FROM
	Record r
ORDER BY
	r.Id

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Record

