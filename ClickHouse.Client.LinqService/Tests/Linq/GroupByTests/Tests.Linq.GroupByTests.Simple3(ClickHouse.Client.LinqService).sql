﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ParentID
FROM
	Child t1
GROUP BY
	t1.ParentID

