﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x."FirstName",
	x."PersonID",
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x
WHERE
	EXISTS(
		SELECT
			1
		FROM
			(VALUES
				('John'), ('Not John')
			) y(item)
		WHERE
			y.item = x."FirstName"
	)

