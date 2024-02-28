BeforeExecute
-- Firebird3 Firebird (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	Max("c_1"."ParentID")
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID

BeforeExecute
-- Firebird3 Firebird (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = -1

SELECT
	Max("c_1"."ParentID")
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID

