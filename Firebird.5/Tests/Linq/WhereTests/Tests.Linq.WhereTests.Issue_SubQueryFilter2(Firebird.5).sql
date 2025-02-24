BeforeExecute
-- Firebird.5 Firebird4
DECLARE @filter1 VarChar(6) -- String
SET     @filter1 = '%John%'
DECLARE @filter2 VarChar(8) -- String
SET     @filter2 = '%Tester%'

SELECT
	"p"."PersonID",
	"p"."Diagnosis"
FROM
	"Patient" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Person" "e"
		WHERE
			"e"."PersonID" = "p"."PersonID" AND "e"."FirstName" LIKE @filter1 ESCAPE '~' AND
			"e"."PersonID" = (
				SELECT
					"d"."PersonID"
				FROM
					"Patient" "d"
				FETCH NEXT 1 ROWS ONLY
			)
	) OR
	EXISTS(
		SELECT
			*
		FROM
			"Person" "e_1"
		WHERE
			"e_1"."PersonID" = "p"."PersonID" AND "e_1"."FirstName" LIKE @filter2 ESCAPE '~' AND
			"e_1"."PersonID" = (
				SELECT
					"d_1"."PersonID"
				FROM
					"Patient" "d_1"
				FETCH NEXT 1 ROWS ONLY
			)
	)
ORDER BY
	"p"."PersonID"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."PersonID",
	"t1"."Diagnosis"
FROM
	"Patient" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."FirstName",
	"t1"."PersonID",
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	"Person" "t1"

