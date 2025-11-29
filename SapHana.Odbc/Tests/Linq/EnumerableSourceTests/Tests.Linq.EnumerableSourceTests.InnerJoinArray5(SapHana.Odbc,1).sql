-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	(
		SELECT 'Janet' AS "item", 'Janet' AS "item0" FROM DUMMY
		UNION ALL
		SELECT 'Doe', 'Doe' FROM DUMMY
		UNION ALL
		SELECT 'John', 'John' FROM DUMMY
		UNION ALL
		SELECT 'Doe', 'Doe' FROM DUMMY) "n"
		INNER JOIN "Person" "p" ON "n"."item" = "p"."LastName"

