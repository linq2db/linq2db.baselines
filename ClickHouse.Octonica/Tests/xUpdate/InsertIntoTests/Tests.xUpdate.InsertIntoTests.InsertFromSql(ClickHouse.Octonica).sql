﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO InsertTestClassDest
(
	Id,
	Value
)
SELECT
	x.Id + 1,
	x.Value
FROM
	(
		select * from InsertTestClass
	) x

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.OtherValue
FROM
	InsertTestClass t1
LIMIT 2

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.Id,
	t1.Value,
	t1.OtherValue
FROM
	InsertTestClassDest t1
LIMIT 2

