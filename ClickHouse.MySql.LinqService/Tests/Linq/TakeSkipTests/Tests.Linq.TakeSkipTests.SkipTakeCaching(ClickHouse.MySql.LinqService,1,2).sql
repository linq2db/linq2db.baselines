﻿BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1
ORDER BY
	t1.Value1
LIMIT 1, 2

