﻿BeforeExecute
--  ClickHouse.Client ClickHouse

INSERT INTO Record
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
--  ClickHouse.Client ClickHouse

INSERT INTO Record
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
--  ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.BaseValue
FROM
	Record t1
ORDER BY
	t1.Id

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	r.Id,
	r.Value,
	r.BaseValue
FROM
	Record r
ORDER BY
	r.Id

