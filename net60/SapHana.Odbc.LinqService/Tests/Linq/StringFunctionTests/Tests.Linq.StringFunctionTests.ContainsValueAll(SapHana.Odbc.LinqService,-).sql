﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @s NVarChar(7) -- String
SET     @s = '123-456'

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND ? LIKE '%-%' ESCAPE '~'

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @s NVarChar(7) -- String
SET     @s = '123-456'

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND ? NOT LIKE '%-%' ESCAPE '~'

