﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	(CAST(COUNT(*) AS NVarChar(11)) || ' items have not been processed, e.g. #' || CAST(MIN("s"."PersonID") AS NVarChar(11))) || '.'
FROM
	"Person" "s"
WHERE
	"s"."LastName" <> 'ERROR'
HAVING
	COUNT(*) > 0

