﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	MAX("g_1"."ChildID")
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ChildID"

