﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(*)
FROM
	FeatureTable r
WHERE
	DECODE(r.One, r.One, 0, 1) = 0

