﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				c_1."Value1"
			FROM
				"Parent" c_1
			WHERE
				c_1."Value1" IS NULL
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

