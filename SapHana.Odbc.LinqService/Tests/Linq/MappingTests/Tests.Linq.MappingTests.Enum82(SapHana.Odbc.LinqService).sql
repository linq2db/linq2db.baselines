﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @testValue Int -- Int32
SET     @testValue = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."Value1" = ?

