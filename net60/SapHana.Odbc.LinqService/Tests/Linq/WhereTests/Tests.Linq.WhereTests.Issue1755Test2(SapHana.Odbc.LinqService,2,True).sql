﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @id  -- Int32
SET     @id = 2

SELECT
	"c_1"."ParentID",
	"c_1"."Value1"
FROM
	"Parent" "c_1"
WHERE
	"c_1"."ParentID" = ? AND "c_1"."Value1" IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

