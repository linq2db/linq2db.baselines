﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @id1 Integer(4) -- Int32
SET     @id1 = 1
DECLARE @id2 Integer(4) -- Int32
SET     @id2 = 2

SELECT
	t2.Left_1,
	t1.Right_1
FROM
	(
		SELECT
			left_1.ParentID as Left_1
		FROM
			Parent left_1
		WHERE
			left_1.ParentID <> @id1
	) t2
		FULL JOIN (
			SELECT
				right_1.ParentID as Right_1
			FROM
				Parent right_1
			WHERE
				right_1.ParentID <> @id2
		) t1 ON t1.Right_1 = t2.Left_1
ORDER BY
	t2.Left_1

