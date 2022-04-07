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
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 1 AS "item" FROM DUMMY
				UNION ALL
				SELECT 2 FROM DUMMY
				UNION ALL
				SELECT 3 FROM DUMMY) "v"
		WHERE
			"v"."item" = "p"."PersonID"
	)

