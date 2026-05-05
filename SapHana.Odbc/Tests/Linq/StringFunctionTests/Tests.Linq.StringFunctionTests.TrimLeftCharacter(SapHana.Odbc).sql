-- SapHana.Odbc SapHanaOdbc

SELECT
	"pp"."ID",
	"pp"."Name"
FROM
	(
		SELECT
			'  ' || "p"."FirstName" || ' ' as "Name",
			"p"."PersonID" as "ID"
		FROM
			"Person" "p"
		WHERE
			"p"."PersonID" = 1
	) "pp"
WHERE
	LTRIM("pp"."Name", (' ')) = 'John '

