﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @skip Int -- Int32
SET     @skip = 3

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1
ORDER BY
	"p"."ParentID"
LIMIT 1 OFFSET ?

