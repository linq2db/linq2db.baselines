﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	(
		SELECT
			Count(*)
		FROM
			Child t1
	)
FROM
	Parent p

