﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
		INNER JOIN GrandChild c_1 ON p.ParentID = c_1.ParentID
WHERE
	toInt32(3) < p.ParentID

