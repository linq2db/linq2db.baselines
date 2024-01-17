﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1,
	(
		SELECT
			p.ParentID as ParentID
		FROM
			GrandChild p
		LIMIT toInt32(3)
	) t1
WHERE
	c_1.ParentID = t1.ParentID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	c_1.ParentID,
	c_1.ChildID
FROM
	Child c_1,
	(
		SELECT
			p.ParentID as ParentID
		FROM
			GrandChild p
		LIMIT toInt32(12), toInt32(3)
	) t1
WHERE
	c_1.ParentID = t1.ParentID

