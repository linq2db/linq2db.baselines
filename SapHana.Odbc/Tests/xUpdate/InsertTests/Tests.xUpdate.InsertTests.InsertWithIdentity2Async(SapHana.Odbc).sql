-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'John',
	'Shepard',
	'M'
)

-- SapHana.Odbc SapHanaOdbc

SELECT CURRENT_IDENTITY_VALUE() FROM DUMMY

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
	"p"."FirstName" = 'John' AND "p"."LastName" = 'Shepard'
LIMIT 2

-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."PersonID" > 4

