﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
			ELSE p."FirstName" LIKE 'Jo%' ESCAPE '~'
		END IS NULL
			THEN False
		WHEN p."FirstName" IS NULL
			THEN NULL
		ELSE p."FirstName" LIKE 'Jo%' ESCAPE '~'
	END = True

