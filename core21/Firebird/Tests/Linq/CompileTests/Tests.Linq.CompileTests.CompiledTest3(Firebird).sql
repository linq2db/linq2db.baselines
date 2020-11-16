BeforeExecute
-- Firebird
DECLARE @p1 Integer -- Int32
SET     @p1 = 1
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT FIRST @p1
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID

BeforeExecute
-- Firebird
DECLARE @p1 Integer -- Int32
SET     @p1 = 2
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2

SELECT FIRST @p1
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID

