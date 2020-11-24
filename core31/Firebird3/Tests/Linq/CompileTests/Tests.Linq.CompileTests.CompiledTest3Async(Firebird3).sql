BeforeExecute
-- Firebird3 Firebird (asynchronously)
DECLARE @p1 Integer -- Int32
SET     @p1 = 1
DECLARE @ParentID_1 Integer -- Int32
SET     @ParentID_1 = 1

SELECT FIRST @p1
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID_1

BeforeExecute
-- Firebird3 Firebird (asynchronously)
DECLARE @p1 Integer -- Int32
SET     @p1 = 2
DECLARE @ParentID_1 Integer -- Int32
SET     @ParentID_1 = 2

SELECT FIRST @p1
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID_1

