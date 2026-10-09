-- SapHana.Odbc SapHanaOdbc
SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" IN (
		SELECT
			"t1"."value"
		FROM
			(
				SELECT "PersonID" AS "value" FROM "Person" WHERE "PersonID" = NULL
			) "t1"
	)

-- SapHana.Odbc SapHanaOdbc
DECLARE @In Int -- Int32
SET     @In = 1

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" IN (
		SELECT
			"t1"."value"
		FROM
			(
				SELECT "PersonID" AS "value" FROM "Person" WHERE "PersonID" = ?
			) "t1"
	)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" IN (
		SELECT
			"t1"."value"
		FROM
			(
				SELECT "PersonID" AS "value" FROM "Person" WHERE "PersonID" = NULL
			) "t1"
	)

