-- SapHana.Odbc SapHanaOdbc
DECLARE @value Int -- Int32
SET     @value = 1

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
DECLARE @value Int -- Int32
SET     @value = 1

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
				SELECT * FROM "Person" WHERE "PersonID" <> ?
			) "s"
		WHERE
			"s"."PersonID" = "p"."PersonID"
	)

-- SapHana.Odbc SapHanaOdbc
DECLARE @value Int -- Int32
SET     @value = 1

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

