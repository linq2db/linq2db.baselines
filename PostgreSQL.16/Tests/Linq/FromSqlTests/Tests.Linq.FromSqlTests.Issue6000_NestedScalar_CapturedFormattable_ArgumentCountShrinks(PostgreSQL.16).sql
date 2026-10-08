-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @In Integer -- Int32
SET     @In = 1
DECLARE @In_1 Integer -- Int32
SET     @In_1 = 99

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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @In Integer -- Int32
SET     @In = 2

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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @In Integer -- Int32
SET     @In = 1
DECLARE @In_1 Integer -- Int32
SET     @In_1 = 99

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

