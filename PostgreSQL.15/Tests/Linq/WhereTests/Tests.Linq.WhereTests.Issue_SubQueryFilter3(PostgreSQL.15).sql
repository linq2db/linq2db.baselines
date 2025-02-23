BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @filter Text(6) -- String
SET     @filter = '%John%'
DECLARE @filter_1 Text(8) -- String
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
		WHERE
			p."FirstName" LIKE :filter ESCAPE '~' AND p."PersonID" = (
				SELECT
					d."PersonID"
				FROM
					"Person" d
				WHERE
					d."PersonID" = patient_1."PersonID"
				LIMIT 1
			)
	) AND
	EXISTS(
		SELECT
			*
		FROM
			"Person" p_1
		WHERE
			p_1."FirstName" LIKE :filter_1 ESCAPE '~' AND p_1."PersonID" = (
				SELECT
					d_1."PersonID"
				FROM
					"Person" d_1
				WHERE
					d_1."PersonID" = patient_1."PersonID"
				LIMIT 1
			)
	)
ORDER BY
	patient_1."PersonID"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."PersonID",
	t1."Diagnosis"
FROM
	"Patient" t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1

