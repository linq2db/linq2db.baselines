﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @n  -- Int32
SET     @n = 1
DECLARE @n  -- Int32
SET     @n = 1

SELECT
	"p"."PersonID" + ?,
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = ?

