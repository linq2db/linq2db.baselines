﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	CASE
		WHEN CASE
			WHEN p."FirstName" IS NULL
				THEN NULL
			ELSE CASE
				WHEN p."FirstName" LIKE 'Jo%' ESCAPE '~'
					THEN 1
				ELSE 0
			END
		END IS NULL
			THEN 0
		WHEN p."FirstName" IS NULL
			THEN NULL
		ELSE CASE
			WHEN p."FirstName" LIKE 'Jo%' ESCAPE '~'
				THEN 1
			ELSE 0
		END
	END = 1

