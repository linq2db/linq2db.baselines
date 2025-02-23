﻿BeforeExecute
-- Oracle.11.Managed Oracle11
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
			*
		FROM
			"Person" e,
			(
				SELECT
					d."PersonID" as "cond"
				FROM
					"Patient" d
				WHERE
					ROWNUM <= 1
			) t1
		WHERE
			e."PersonID" = p."PersonID" AND e."FirstName" LIKE :filter1 ESCAPE '~' AND
			e."PersonID" = t1."cond"
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
				WHERE
					ROWNUM <= 1
			) t2
		WHERE
			e_1."PersonID" = p."PersonID" AND e_1."FirstName" LIKE :filter2 ESCAPE '~' AND
			e_1."PersonID" = t2."cond"
	)
ORDER BY
	p."PersonID"

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."PersonID",
	t1."Diagnosis"
FROM
	"Patient" t1

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

