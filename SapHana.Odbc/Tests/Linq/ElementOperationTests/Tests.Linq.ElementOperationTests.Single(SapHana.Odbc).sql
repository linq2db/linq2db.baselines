﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1
LIMIT 2

