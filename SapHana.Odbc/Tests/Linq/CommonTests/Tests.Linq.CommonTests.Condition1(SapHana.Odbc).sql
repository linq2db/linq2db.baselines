BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CASE
		WHEN Length("p"."FirstName") <> 0 THEN "p"."FirstName"
		WHEN NOT ("p"."MiddleName" IS NULL OR Length("p"."MiddleName") = 0 AND "p"."MiddleName" IS NOT NULL)
			THEN "p"."MiddleName"
		ELSE "p"."LastName"
	END
FROM
	"Person" "p"

