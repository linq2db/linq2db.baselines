﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN NULL IN (
			SELECT
				c_1."Value1"
			FROM
				"Parent" c_1
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

