﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"Parent" "t1"
		LEFT JOIN "Child" "c_1" ON "t1"."ParentID" = "c_1"."ParentID"

