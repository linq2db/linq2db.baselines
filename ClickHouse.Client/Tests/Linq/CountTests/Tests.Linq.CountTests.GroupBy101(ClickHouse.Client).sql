﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Count(*)
FROM
	Child t1
GROUP BY
	t1.ParentID

