﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	g_1.FirstName,
	COUNT(*)
FROM
	Person g_1
GROUP BY
	g_1.FirstName
ORDER BY
	g_1.FirstName

