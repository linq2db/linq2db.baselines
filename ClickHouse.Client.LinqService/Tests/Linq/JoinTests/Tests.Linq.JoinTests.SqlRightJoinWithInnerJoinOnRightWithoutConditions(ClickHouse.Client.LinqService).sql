﻿BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	left_1.ParentID,
	right_2.ParentID
FROM
	Parent left_1
		INNER JOIN Parent left2 ON left_1.Value1 = left2.Value1 + 2
		RIGHT JOIN (
			SELECT
				right_1.ParentID as ParentID,
				right_1.Value1 + 2 as c1
			FROM
				Parent right_1
			WHERE
				right_1.ParentID <> 1
		) right_2 ON right_2.c1 = left_1.Value1
ORDER BY
	left_1.ParentID

