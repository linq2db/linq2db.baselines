BeforeExecute
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
	'123' || CASE
		WHEN LENGTH("p"."FirstName") < CAST(6 AS Integer) THEN LPAD("p"."FirstName", CAST(6 AS Integer), '*')
		ELSE "p"."FirstName"
	END = '123**John' AND
	"p"."PersonID" = 1

