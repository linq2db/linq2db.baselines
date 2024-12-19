BeforeExecute
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
			"Person" e,
			(
				SELECT
					d."PersonID" as "cond"
				FROM
					"Patient" d
				FETCH NEXT 1 ROWS ONLY
			) t2
		WHERE
			e."FirstName" LIKE :filter1 ESCAPE '~' AND e."PersonID" = t2."cond"
	) OR
	EXISTS(
		SELECT
			*
		FROM
			"Person" e_1,
			(
				SELECT
					d_1."PersonID" as "cond"
				FROM
					"Patient" d_1
				FETCH NEXT 1 ROWS ONLY
			) t3
		WHERE
			e_1."FirstName" LIKE :filter2 ESCAPE '~' AND e_1."PersonID" = t3."cond"
	)
ORDER BY
	t1."PersonID"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."PersonID",
	t1."Diagnosis"
FROM
	"Patient" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

