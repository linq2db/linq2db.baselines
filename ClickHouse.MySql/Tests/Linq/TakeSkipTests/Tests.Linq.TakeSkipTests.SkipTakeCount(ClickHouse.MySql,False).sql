﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			Child t1
		LIMIT 2, 5
	) t2

