﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 1
DECLARE @p Int -- Int32
SET     @p = 2
DECLARE @p Int -- Int32
SET     @p = 3
DECLARE @param Int -- Int32
SET     @param = 4

SELECT
	"o"."ParentID",
	"o"."Value1"
FROM
	"Parent" "o"
WHERE
	"o"."ParentID" IN (?, ?, ?) OR "o"."ParentID" = ?
LIMIT 1

