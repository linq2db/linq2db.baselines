﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @skip  -- Int32
SET     @skip = 5
DECLARE @skip  -- Int32
SET     @skip = 2

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID" DESC
LIMIT ? OFFSET ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @skip  -- Int32
SET     @skip = 5
DECLARE @skip  -- Int32
SET     @skip = 2

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID" DESC
LIMIT ? OFFSET ?

