-- SapHana.Odbc SapHanaOdbc
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'F'

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."Gender" = ?
ORDER BY
	"p"."PersonID"

-- SapHana.Odbc SapHanaOdbc
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."Gender" = ?
ORDER BY
	"p"."PersonID"

