﻿BeforeExecute
--  ClickHouse.Client ClickHouse

INSERT INTO InsertTestClassDest
(
	Value,
	OtherValue
)
SELECT
	t1.Value + 2,
	t1.OtherValue + 2
FROM
	InsertTestClass t1

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.OtherValue
FROM
	InsertTestClass t1
LIMIT 2

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.OtherValue
FROM
	InsertTestClassDest t1
LIMIT 2

