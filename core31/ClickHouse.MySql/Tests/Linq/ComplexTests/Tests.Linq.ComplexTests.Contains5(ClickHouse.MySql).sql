﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

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
					p.ParentID as ParentID
				FROM
					Parent p
				LIMIT toInt32(1), toInt32(100)
			) t1
	)

