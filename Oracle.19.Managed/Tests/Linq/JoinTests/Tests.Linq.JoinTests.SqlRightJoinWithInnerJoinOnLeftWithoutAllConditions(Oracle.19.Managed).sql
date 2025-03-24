﻿BeforeExecute
--  Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	right_1."ParentID"
FROM
	"Parent" t1
		RIGHT JOIN "Parent" right_1
			INNER JOIN "Parent" right2 ON right_1."Value1" = right2."Value1" + 2
		ON right_1."Value1" + 2 = t1."Value1" OR right_1."Value1" IS NULL AND t1."Value1" IS NULL
ORDER BY
	t1."ParentID"

