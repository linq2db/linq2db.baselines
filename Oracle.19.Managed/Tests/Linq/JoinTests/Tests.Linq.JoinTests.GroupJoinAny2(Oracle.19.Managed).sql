﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = p."ParentID"
		)
			THEN 1
		ELSE 0
	END
FROM
	"Parent" p

