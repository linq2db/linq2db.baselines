﻿BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	pmp.ParentID
FROM
	Child pmp
GROUP BY
	pmp.ParentID

BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

