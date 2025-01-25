﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	g_2.Key_1,
	COUNT(*)
FROM
	(
		SELECT
			toDate32(now()) as Key_1
		FROM
			Parent g_1
				INNER JOIN Child s ON g_1.ParentID = s.ParentID
		WHERE
			g_1.Value1 > 0
	) g_2
GROUP BY
	g_2.Key_1
LIMIT 5

