BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT 2 AS "ID" FROM DUMMY
			UNION ALL
			SELECT 3 FROM DUMMY) "n" ON "p"."PersonID" = "n"."ID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT 4 AS "ID" FROM DUMMY
			UNION ALL
			SELECT 5 FROM DUMMY) "n" ON "p"."PersonID" = "n"."ID"

