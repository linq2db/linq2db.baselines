﻿BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" t1
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

