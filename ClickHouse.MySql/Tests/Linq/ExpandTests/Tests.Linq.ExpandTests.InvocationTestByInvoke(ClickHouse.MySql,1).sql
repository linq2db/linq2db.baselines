﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

ALTER TABLE
	SampleClass
UPDATE
	Value = 10 + Value * 2
WHERE 1

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Value
FROM
	SampleClass t1

