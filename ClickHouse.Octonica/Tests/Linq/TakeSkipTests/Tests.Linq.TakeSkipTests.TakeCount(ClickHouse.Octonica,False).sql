﻿BeforeExecute
--  ClickHouse.Octonica ClickHouse

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			Child t1
		LIMIT 5
	) t2

