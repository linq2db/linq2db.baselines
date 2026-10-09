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
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT "PersonID" AS "value" FROM "Person" WHERE "PersonID" = 1
			) t1
		WHERE
			p."PersonID" = t1."value"
	)

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
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT "PersonID" AS "value" FROM "Person" WHERE "PersonID" = 2
			) t1
		WHERE
			p."PersonID" = t1."value"
	)

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
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT "PersonID" AS "value" FROM "Person" WHERE "PersonID" = 1
			) t1
		WHERE
			p."PersonID" = t1."value"
	)

