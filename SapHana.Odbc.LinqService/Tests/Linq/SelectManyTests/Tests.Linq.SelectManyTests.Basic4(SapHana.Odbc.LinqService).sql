﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"_"."ParentID" + 1
FROM
	"Parent" "cp"
		INNER JOIN "Child" "_" ON "cp"."ParentID" = "_"."ParentID" + 1

