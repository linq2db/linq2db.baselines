-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT 'Janet' AS "FirstName", 1 AS "ID", NULL AS "LastName", NULL AS "MiddleName", 'M' AS "Gender" FROM DUMMY
			UNION ALL
			SELECT 'Doe', 2, NULL, NULL, 'M' FROM DUMMY) "n" ON "p"."PersonID" = "n"."ID"

