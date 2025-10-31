-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @paramCopy Integer -- Int32
SET     @paramCopy = 1

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."PersonID" IN (
		SELECT
			p."PersonID"
		FROM
			"Person" p
		WHERE
			p."PersonID" = :paramCopy
	)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @paramCopy Integer -- Int32
SET     @paramCopy = 2

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."PersonID" IN (
		SELECT
			p."PersonID"
		FROM
			"Person" p
		WHERE
			p."PersonID" = :paramCopy
	)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @paramCopy Integer -- Int32
SET     @paramCopy = 3

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."PersonID" IN (
		SELECT
			p."PersonID"
		FROM
			"Person" p
		WHERE
			p."PersonID" = :paramCopy
	)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @paramCopy Integer -- Int32
SET     @paramCopy = 4

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."PersonID" IN (
		SELECT
			p."PersonID"
		FROM
			"Person" p
		WHERE
			p."PersonID" = :paramCopy
	)

-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @paramCopy Integer -- Int32
SET     @paramCopy = 1

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
WHERE
	t1."PersonID" IN (
		SELECT
			p."PersonID"
		FROM
			"Person" p
		WHERE
			p."PersonID" = :paramCopy
	)

