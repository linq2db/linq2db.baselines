﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID IN (
		SELECT
			t1.ParentID
		FROM
			(
				SELECT
					v.ParentID as ParentID
				FROM
					Parent v
				LIMIT 100
			) t1
	)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID
FROM
	Child t1

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

