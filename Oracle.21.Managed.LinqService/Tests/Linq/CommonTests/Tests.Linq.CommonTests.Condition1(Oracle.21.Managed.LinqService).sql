﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN LENGTH(p."FirstName") <> 0 THEN p."FirstName"
		WHEN NOT (p."MiddleName" IS NULL OR LENGTH(p."MiddleName") = 0)
			THEN p."MiddleName"
		ELSE p."LastName"
	END
FROM
	"Person" p

