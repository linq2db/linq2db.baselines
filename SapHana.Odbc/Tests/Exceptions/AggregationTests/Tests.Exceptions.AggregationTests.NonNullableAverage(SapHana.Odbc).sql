﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc

SELECT
	AVG("t1"."ParentID")
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" < 0

