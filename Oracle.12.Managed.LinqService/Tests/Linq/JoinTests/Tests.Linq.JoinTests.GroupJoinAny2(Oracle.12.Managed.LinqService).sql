﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."ParentID",
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" t1_1
			WHERE
				t1."ParentID" = t1_1."ParentID"
		)
			THEN 1
		ELSE 0
	END
FROM
	"Parent" t1

