-- SapHana.Odbc SapHanaOdbc
DECLARE @gender VarChar(1) -- AnsiString
SET     @gender = 'M'

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	? = CASE
		WHEN "p"."PersonID" > 2 THEN 'M'
		ELSE 'F'
	END
ORDER BY
	"p"."PersonID"

