BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."PersonID" = 1 AND t1."Gender" = 'M'

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."PersonID" = 1 AND 'M' = t1."Gender"

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @gender Char -- String
SET     @gender = 'M'

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."PersonID" = 1 AND t1."Gender" = :gender

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @gender Char -- String
SET     @gender = 'M'

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."PersonID" = 1 AND :gender = t1."Gender"

