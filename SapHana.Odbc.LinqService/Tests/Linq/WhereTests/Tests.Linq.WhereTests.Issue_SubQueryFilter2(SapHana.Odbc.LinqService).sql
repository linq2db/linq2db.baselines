BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @filter1 NVarChar(6) -- String
SET     @filter1 = '%John%'
DECLARE @filter2 NVarChar(8) -- String
SET     @filter2 = '%Tester%'

SELECT
	"p"."PersonID",
	"p"."Diagnosis"
FROM
	"Patient" "p"
WHERE
	EXISTS(
		SELECT
			1
		FROM
			"Person" "e",
			(
				SELECT
					"d"."PersonID"
				FROM
					"Patient" "d"
				LIMIT 1
			) "t1"
		WHERE
			"e"."PersonID" = "p"."PersonID" AND "e"."FirstName" LIKE ? ESCAPE '~' AND
			"e"."PersonID" = "t1"."PersonID"
	) OR
	EXISTS(
		SELECT
			1
		FROM
			"Person" "e_1",
			(
				SELECT
					"d_1"."PersonID"
				FROM
					"Patient" "d_1"
				LIMIT 1
			) "t2"
		WHERE
			"e_1"."PersonID" = "p"."PersonID" AND "e_1"."FirstName" LIKE ? ESCAPE '~' AND
			"e_1"."PersonID" = "t2"."PersonID"
	)
ORDER BY
	"p"."PersonID"

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

