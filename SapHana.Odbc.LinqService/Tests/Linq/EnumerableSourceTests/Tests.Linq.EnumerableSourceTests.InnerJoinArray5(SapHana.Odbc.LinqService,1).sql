BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	(
		SELECT 'Janet' AS "item" FROM DUMMY
		UNION ALL
		SELECT 'Doe' FROM DUMMY
		UNION ALL
		SELECT 'John' FROM DUMMY
		UNION ALL
		SELECT 'Doe' FROM DUMMY) "n"
		INNER JOIN "Person" "p" ON "n"."item" = "p"."LastName"

