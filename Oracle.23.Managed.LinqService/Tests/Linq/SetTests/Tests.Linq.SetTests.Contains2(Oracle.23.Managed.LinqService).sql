﻿BeforeExecute
--  Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN p."ParentID" IN (
			SELECT
				c_1."ParentID"
			FROM
				"Child" c_1
		)
			THEN 1
		ELSE 0
	END
FROM
	"Parent" p

