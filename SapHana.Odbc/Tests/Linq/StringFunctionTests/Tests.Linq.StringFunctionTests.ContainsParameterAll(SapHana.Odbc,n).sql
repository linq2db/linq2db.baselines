-- SapHana.Odbc SapHanaOdbc
DECLARE @s NVarChar(7) -- String
SET     @s = '123n456'
DECLARE @toTest NVarChar(3) -- String
SET     @toTest = '%n%'

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND ? LIKE ? ESCAPE '~'

