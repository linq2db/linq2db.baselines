-- PostgreSQL.19 PostgreSQL12
SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" IN (
		SELECT
			t1.value
		FROM
			(
				SELECT "PersonID" AS "value" FROM "Person" WHERE "PersonID" = NULL
			) t1(value)
	)

-- PostgreSQL.19 PostgreSQL12
DECLARE @In Integer -- Int32
SET     @In = 1

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" IN (
		SELECT
			t1.value
		FROM
			(
				SELECT "PersonID" AS "value" FROM "Person" WHERE "PersonID" = :In
			) t1(value)
	)

-- PostgreSQL.19 PostgreSQL12
SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" IN (
		SELECT
			t1.value
		FROM
			(
				SELECT "PersonID" AS "value" FROM "Person" WHERE "PersonID" = NULL
			) t1(value)
	)

