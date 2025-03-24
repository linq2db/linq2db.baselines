﻿BeforeExecute
--  ClickHouse.MySql ClickHouse

SELECT
	x_1.StrValue
FROM
	(
		SELECT
			toString(x.Value1) as StrValue
		FROM
			Parent x
		UNION ALL
		SELECT
			toString(a_Parent1.Value1) as StrValue
		FROM
			Parent t1
				INNER JOIN Child c_1 ON t1.ParentID = c_1.ParentID
				INNER JOIN Parent a_Parent1 ON c_1.ParentID = a_Parent1.ParentID
	) x_1
WHERE
	x_1.StrValue IS NOT NULL

