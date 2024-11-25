﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @filter1 Varchar2(6) -- String
SET     @filter1 = '%John%'
DECLARE @filter2 Varchar2(8) -- String
SET     @filter2 = '%Tester%'

SELECT
	p."PersonID",
	p."Diagnosis"
FROM
	"Patient" p
WHERE
	EXISTS(
		SELECT
			1
		FROM
			"Person" e,
			(
				SELECT
					d."PersonID"
				FROM
					"Patient" d
				FETCH NEXT 1 ROWS ONLY
			) t1
		WHERE
			e."PersonID" = p."PersonID" AND e."FirstName" LIKE :filter1 ESCAPE '~' AND
			e."PersonID" = t1."PersonID"
	) OR
	EXISTS(
		SELECT
			1
		FROM
			"Person" e_1,
			(
				SELECT
					d_1."PersonID"
				FROM
					"Patient" d_1
				FETCH NEXT 1 ROWS ONLY
			) t2
		WHERE
			e_1."PersonID" = p."PersonID" AND e_1."FirstName" LIKE :filter2 ESCAPE '~' AND
			e_1."PersonID" = t2."PersonID"
	)
ORDER BY
	p."PersonID"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."PersonID",
	t1."Diagnosis"
FROM
	"Patient" t1

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

