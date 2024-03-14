﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."PersonID",
	t1."FirstName",
	t1."LastName",
	t1."MiddleName",
	t1."Gender",
	t1."LastName" || ', ' || t1."FirstName",
	t1."LastName" || ', ' || t1."FirstName",
	(
		SELECT
			Count(*)
		FROM
			"Doctor" t2
		WHERE
			t2."PersonID" = t1."PersonID"
	)
FROM
	"Person" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	i."PersonID",
	i."FirstName",
	i."LastName",
	i."MiddleName",
	i."Gender",
	i."LastName" || ', ' || i."FirstName",
	i."LastName" || ', ' || i."FirstName",
	(
		SELECT
			Count(*)
		FROM
			"Doctor" t1
		WHERE
			t1."PersonID" = i."PersonID"
	)
FROM
	"Person" i
WHERE
	i."LastName" || ', ' || i."FirstName" <> 'Pupkin, John'

