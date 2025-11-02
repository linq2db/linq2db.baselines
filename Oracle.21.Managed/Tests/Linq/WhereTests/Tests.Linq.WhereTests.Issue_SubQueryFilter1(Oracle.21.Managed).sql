-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @filter1 Varchar2(6) -- String
SET     @filter1 = '%John%'
DECLARE @filter2 Varchar2(8) -- String
SET     @filter2 = '%Tester%'

SELECT
	t1."PersonID",
	t1."Diagnosis"
FROM
	"Patient" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" e
		WHERE
			e."FirstName" LIKE :filter1 ESCAPE '~' AND e."PersonID" = (
				SELECT
					d."PersonID"
				FROM
					"Patient" d
				FETCH NEXT 1 ROWS ONLY
			)
	) OR
	EXISTS(
		SELECT
			*
		FROM
			"Person" e_1
		WHERE
			e_1."FirstName" LIKE :filter2 ESCAPE '~' AND e_1."PersonID" = (
				SELECT
					d_1."PersonID"
				FROM
					"Patient" d_1
				FETCH NEXT 1 ROWS ONLY
			)
	)
ORDER BY
	t1."PersonID"

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."PersonID",
	t1."Diagnosis"
FROM
	"Patient" t1

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

