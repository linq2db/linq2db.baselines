BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @s NVarChar(7) -- String
SET     @s = '123n456'

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND ? LIKE '%n%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @s NVarChar(7) -- String
SET     @s = '123n456'

SELECT
	COUNT(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND ? NOT LIKE '%n%' ESCAPE '~'

