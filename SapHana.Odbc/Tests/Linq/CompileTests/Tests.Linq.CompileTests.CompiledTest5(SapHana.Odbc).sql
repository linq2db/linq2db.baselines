﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int32
SET     @p = 1
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = ? AND "p"."Value1" = ?

BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = ? AND "p"."Value1" IS NULL

