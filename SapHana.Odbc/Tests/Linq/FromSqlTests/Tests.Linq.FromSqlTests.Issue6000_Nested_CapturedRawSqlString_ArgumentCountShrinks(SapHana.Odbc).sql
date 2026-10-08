-- SapHana.Odbc SapHanaOdbc
DECLARE @args Int -- Int32
SET     @args = 1
DECLARE @args Int -- Int32
SET     @args = 99

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT * FROM "Person" WHERE "PersonID" = ?
			) "s"
		WHERE
			"s"."PersonID" = "p"."PersonID"
	)

-- SapHana.Odbc SapHanaOdbc
DECLARE @args Int -- Int32
SET     @args = 2

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT * FROM "Person" WHERE "PersonID" = ?
			) "s"
		WHERE
			"s"."PersonID" = "p"."PersonID"
	)

-- SapHana.Odbc SapHanaOdbc
DECLARE @args Int -- Int32
SET     @args = 1
DECLARE @args Int -- Int32
SET     @args = 99

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT * FROM "Person" WHERE "PersonID" = ?
			) "s"
		WHERE
			"s"."PersonID" = "p"."PersonID"
	)

