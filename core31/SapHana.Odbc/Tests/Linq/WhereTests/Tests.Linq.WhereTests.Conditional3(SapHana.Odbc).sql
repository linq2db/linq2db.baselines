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
	"p"."PersonID" = 1 AND CASE
		WHEN "p"."MiddleName" IS NOT NULL
			THEN 3
		ELSE CASE
			WHEN "p"."PersonID" = 2 THEN 2
			ELSE CASE
				WHEN "p"."MiddleName" IS NOT NULL
					THEN 0
				ELSE 1
			END
		END
	END = 1 AND
	CASE
		WHEN "p"."FirstName" IS NULL
			THEN 3
		ELSE CASE
			WHEN "p"."PersonID" = 2 THEN 2
			ELSE CASE
				WHEN "p"."FirstName" IS NULL
					THEN 0
				ELSE 1
			END
		END
	END = 1

