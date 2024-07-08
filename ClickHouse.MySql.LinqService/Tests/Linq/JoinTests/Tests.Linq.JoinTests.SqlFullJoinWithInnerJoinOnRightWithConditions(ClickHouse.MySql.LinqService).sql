﻿BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	t1.ParentID,
	right_2.ParentID
FROM
	(
		SELECT
			left_1.Value1 as Value1,
			left_1.ParentID as ParentID
		FROM
			Parent left_1
				INNER JOIN Parent left2 ON left_1.Value1 = left2.Value1 + 2
		WHERE
			left_1.ParentID <> 2 AND left2.ParentID <> 1
	) t1
		FULL JOIN (
			SELECT
				right_1.ParentID as ParentID,
				right_1.Value1 + 2 as c1
			FROM
				Parent right_1
			WHERE
				right_1.ParentID <> 1
		) right_2 ON (right_2.c1 = t1.Value1 OR right_2.c1 IS NULL AND t1.Value1 IS NULL)
ORDER BY
	t1.ParentID

