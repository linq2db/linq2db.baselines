-- SapHana.Odbc SapHanaOdbc
DECLARE @s NVarChar(7) -- String
SET     @s = '123[456'
DECLARE @ps NVarChar(3) -- String
SET     @ps = '%[%'

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND ? LIKE ? ESCAPE '~'

