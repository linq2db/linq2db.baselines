﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	left_1."ParentID",
	left_1."Value1",
	t1."right_2",
	t1."right_1"
FROM
	"Parent" left_1
		RIGHT JOIN (
			SELECT
				right_1."Value1" as "right_1",
				right_1."ParentID" as "right_2"
			FROM
				"Parent" right_1
					INNER JOIN "Parent" right2 ON right_1."Value1" = right2."Value1" + 2
		) t1 ON t1."right_1" + 2 = left_1."Value1"
ORDER BY
	left_1."ParentID"

