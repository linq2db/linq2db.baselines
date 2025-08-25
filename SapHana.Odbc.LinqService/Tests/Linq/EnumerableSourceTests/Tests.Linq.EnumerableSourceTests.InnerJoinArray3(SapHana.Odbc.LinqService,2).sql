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
			SELECT 'Janet' AS "item" FROM DUMMY
			UNION ALL
			SELECT 'Doe' FROM DUMMY
			UNION ALL
			SELECT 'John' FROM DUMMY
			UNION ALL
			SELECT 'Doe' FROM DUMMY) "n" ON "p"."LastName" = "n"."item"

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
			SELECT 'Janet' AS "item" FROM DUMMY
			UNION ALL
			SELECT 'Doe' FROM DUMMY
			UNION ALL
			SELECT 'John' FROM DUMMY
			UNION ALL
			SELECT 'Doe1' FROM DUMMY) "n" ON "p"."LastName" = "n"."item"

