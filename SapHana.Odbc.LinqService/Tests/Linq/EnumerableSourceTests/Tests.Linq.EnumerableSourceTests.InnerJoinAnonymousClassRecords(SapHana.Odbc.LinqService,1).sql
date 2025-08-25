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
			SELECT 'Janet' AS "Name" FROM DUMMY
			UNION ALL
			SELECT 'Doe' FROM DUMMY) "n" ON "p"."LastName" = "n"."Name"

