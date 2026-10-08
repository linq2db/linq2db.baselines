-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @args Int32
SET     @args = 1
DECLARE @args_1 Int32
SET     @args_1 = 99

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
				SELECT * FROM "Person" WHERE "PersonID" = :args
			) s
		WHERE
			s."PersonID" = p."PersonID"
	)

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @args Int32
SET     @args = 2

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
				SELECT * FROM "Person" WHERE "PersonID" = :args
			) s
		WHERE
			s."PersonID" = p."PersonID"
	)

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @args Int32
SET     @args = 1
DECLARE @args_1 Int32
SET     @args_1 = 99

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
				SELECT * FROM "Person" WHERE "PersonID" = :args
			) s
		WHERE
			s."PersonID" = p."PersonID"
	)

