﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ParentID  -- Int32
SET     @ParentID = 2
DECLARE @ChildID  -- Int32
SET     @ChildID = 21

SELECT
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Child" "ch"
WHERE
	NOT ("ch"."ParentID" = ? AND "ch"."ChildID" = ?) AND
	"ch"."ParentID" > 0

