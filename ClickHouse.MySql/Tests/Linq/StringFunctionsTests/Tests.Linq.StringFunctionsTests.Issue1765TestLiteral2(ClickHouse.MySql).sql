﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	arrayStringConcat(groupArray(t1.Value4), ' -> ')
FROM
	SampleClass t1

