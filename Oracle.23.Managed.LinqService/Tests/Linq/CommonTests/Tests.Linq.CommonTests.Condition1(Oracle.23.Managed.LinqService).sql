﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN NOT (p."FirstName" IS NULL OR Length(p."FirstName") = 0)
			THEN p."FirstName"
		WHEN NOT (p."MiddleName" IS NULL OR Length(p."MiddleName") = 0)
			THEN p."MiddleName"
		ELSE p."LastName"
	END
FROM
	"Person" p

