﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p_1.ParentID,
	c_1.ChildID
FROM
	(
		SELECT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID > toInt32(0)
		LIMIT toInt32(10)
	) p_1
		INNER JOIN Child c_1 ON p_1.ParentID = c_1.ParentID

