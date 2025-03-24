﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	c_1.ParentID,
	c_1.ChildID,
	c_1.GrandChildID
FROM
	GrandChild c_1
WHERE
	c_1.ParentID IS NOT NULL AND (c_1.ParentID IS NULL AND 1 IN (
		SELECT
			1
		FROM
			Parent p
		WHERE
			p.Value1 IS NOT NULL AND p.Value1 IS NULL
	) OR c_1.ParentID IS NOT NULL AND c_1.ParentID IN (
		SELECT
			p_1.Value1
		FROM
			Parent p_1
		WHERE
			p_1.Value1 IS NOT NULL
	))

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.ChildID,
	t1.GrandChildID
FROM
	GrandChild t1

BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	t1.Value1
FROM
	Parent t1

