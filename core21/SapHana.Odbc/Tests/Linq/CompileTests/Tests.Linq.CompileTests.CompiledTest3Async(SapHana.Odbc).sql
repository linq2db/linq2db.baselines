BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @ParentID  -- Int32
SET     @ParentID = 1
DECLARE @ParentID_1  -- Int32
SET     @ParentID_1 = 1

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = ?
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @ParentID  -- Int32
SET     @ParentID = 2
DECLARE @ParentID_1  -- Int32
SET     @ParentID_1 = 2

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = ?
LIMIT ?

