BeforeExecute
-- Firebird3 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT FIRST @ParentID
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID

BeforeExecute
-- Firebird3 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2

SELECT FIRST @ParentID
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID

