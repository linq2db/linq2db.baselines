BeforeExecute
-- Firebird3 Firebird (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT FIRST @take
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID

BeforeExecute
-- Firebird3 Firebird (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2

SELECT FIRST @take
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID

