﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
ORDER BY
	MOD("ch"."ChildID", 2),
	"ch"."ChildID" DESC

