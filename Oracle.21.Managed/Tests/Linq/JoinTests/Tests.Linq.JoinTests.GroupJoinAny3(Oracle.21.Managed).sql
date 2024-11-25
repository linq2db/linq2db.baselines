﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"Child" c_1
			WHERE
				p."ParentID" = c_1."ParentID"
		)
			THEN 1
		ELSE 0
	END
FROM
	"Parent" p

