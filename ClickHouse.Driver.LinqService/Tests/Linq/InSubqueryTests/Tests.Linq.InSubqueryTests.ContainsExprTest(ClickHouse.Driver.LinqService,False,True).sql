﻿BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID + 1 IN (
		SELECT
			c_1.ParentID
		FROM
			Child c_1
	)

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

