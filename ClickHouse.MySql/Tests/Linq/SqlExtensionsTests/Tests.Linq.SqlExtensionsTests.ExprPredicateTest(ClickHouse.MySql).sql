﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	sample_table_temp t
WHERE
	t.id BETWEEN 0 AND value

