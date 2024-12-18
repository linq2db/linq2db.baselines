﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t."FirstName",
	t."PersonID",
	t."LastName",
	t."MiddleName",
	t."Gender"
FROM
	"Person" t
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(VALUES
				('j'), ('o'), ('h'), ('n')
			) x(item)
		WHERE
			Position(x.item in t."FirstName") - 1 > 0 AND Position(x.item in t."FirstName") IS NOT NULL
	)

