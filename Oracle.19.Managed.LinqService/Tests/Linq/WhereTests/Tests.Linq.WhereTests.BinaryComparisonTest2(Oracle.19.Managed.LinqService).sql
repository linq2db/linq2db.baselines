﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Person" t1
			WHERE
				NOT (t1."MiddleName" <> t1."LastName" OR t1."MiddleName" IS NULL)
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

