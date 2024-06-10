﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @filter Varchar2(6) -- String
SET     @filter = '%John%'
DECLARE @filter_1 Varchar2(8) -- String
SET     @filter_1 = '%Tester%'

SELECT
	patient_1."PersonID",
	patient_1."Diagnosis"
FROM
	"Patient" patient_1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" p
				CROSS APPLY (
					SELECT
						d."PersonID" as ID
					FROM
						"Person" d
					WHERE
						d."PersonID" = patient_1."PersonID"
					FETCH NEXT 1 ROWS ONLY
				) t1
		WHERE
			p."FirstName" LIKE :filter ESCAPE '~' AND p."PersonID" = t1.ID
	) AND
	EXISTS(
		SELECT
			*
		FROM
			"Person" p_1
				CROSS APPLY (
					SELECT
						d_1."PersonID" as ID
					FROM
						"Person" d_1
					WHERE
						d_1."PersonID" = patient_1."PersonID"
					FETCH NEXT 1 ROWS ONLY
				) t2
		WHERE
			p_1."FirstName" LIKE :filter_1 ESCAPE '~' AND p_1."PersonID" = t2.ID
	)
ORDER BY
	patient_1."PersonID"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."PersonID",
	t1."Diagnosis"
FROM
	"Patient" t1

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

