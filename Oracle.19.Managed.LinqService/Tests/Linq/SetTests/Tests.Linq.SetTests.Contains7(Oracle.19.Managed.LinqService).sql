﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN 11 IN (
			SELECT
				c_1."ParentID"
			FROM
				"Child" c_1
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

