﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	"ch"."ChildID" >= 0 AND "ch"."ChildID" <= 100
ORDER BY
	"ch"."ParentID",
	"ch"."ChildID"
LIMIT 4200000000 OFFSET 3

