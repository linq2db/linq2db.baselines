﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID_1  -- Int32
SET     @ParentID_1 = 2

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	("p"."ParentID" = ? AND "p"."Value1" IS NULL)

