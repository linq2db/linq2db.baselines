﻿BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	addDays(now(), t.Value) as Value1,
	addDays(now(), 2) as Value2
FROM
	SampleClass t
WHERE
	t.Value = 1
UNION DISTINCT
SELECT
	addDays(now(), 3) as Value1,
	addDays(now(), 4) as Value2

BeforeExecute
--  ClickHouse.Client ClickHouse

SELECT
	v_1.Value2
FROM
	(
		SELECT
			addDays(now(), v.Value) as Value1,
			addDays(now(), 2) as Value2
		FROM
			SampleClass v
		WHERE
			v.Value = 1
		UNION DISTINCT
		SELECT
			addDays(now(), 3) as Value1,
			addDays(now(), 4) as Value2
	) v_1

