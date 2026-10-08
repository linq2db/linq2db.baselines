-- Oracle.11.Managed Oracle11
DECLARE @In_1 Int32
SET     @In_1 = 1
DECLARE @In_2 Int32
SET     @In_2 = 99

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
			t1."value"
		FROM
			(
				SELECT "PersonID" AS "value" FROM "Person" WHERE "PersonID" = :In_1
			) t1
	)

-- Oracle.11.Managed Oracle11
DECLARE @In_1 Int32
SET     @In_1 = 2

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
			t1."value"
		FROM
			(
				SELECT "PersonID" AS "value" FROM "Person" WHERE "PersonID" = :In_1
			) t1
	)

-- Oracle.11.Managed Oracle11
DECLARE @In_1 Int32
SET     @In_1 = 1
DECLARE @In_2 Int32
SET     @In_2 = 99

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
			t1."value"
		FROM
			(
				SELECT "PersonID" AS "value" FROM "Person" WHERE "PersonID" = :In_1
			) t1
	)

