﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID_1  -- Int32
SET     @ParentID_1 = 1
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = ?
ORDER BY
	"x"."ParentID" DESC
LIMIT ?

