BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @filter1 NVarChar(6) -- String
SET     @filter1 = '%John%'
DECLARE @filter2 NVarChar(8) -- String
SET     @filter2 = '%Tester%'

SELECT
	"t1"."PersonID",
	"t1"."Diagnosis"
FROM
	"Patient" "t1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" "e"
		WHERE
			"e"."FirstName" LIKE ? ESCAPE '~' AND "e"."PersonID" = (
				SELECT
					"d"."PersonID"
				FROM
					"Patient" "d"
				LIMIT 1
			)
	) OR
	EXISTS(
		SELECT
			*
		FROM
			"Person" "e_1"
		WHERE
			"e_1"."FirstName" LIKE ? ESCAPE '~' AND "e_1"."PersonID" = (
				SELECT
					"d_1"."PersonID"
				FROM
					"Patient" "d_1"
				LIMIT 1
			)
	)
ORDER BY
	"t1"."PersonID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."PersonID",
	"t1"."Diagnosis"
FROM
	"Patient" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

