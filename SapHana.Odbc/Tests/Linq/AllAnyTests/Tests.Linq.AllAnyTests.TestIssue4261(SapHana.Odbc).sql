-- SapHana.Odbc SapHanaOdbc

SELECT
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 'John' AS "item" FROM DUMMY
				UNION ALL
				SELECT 'Not John' FROM DUMMY) "y"
		WHERE
			"y"."item" = "x"."FirstName"
	)

