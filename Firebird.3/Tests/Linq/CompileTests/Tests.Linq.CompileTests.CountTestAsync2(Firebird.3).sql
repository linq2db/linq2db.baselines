BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = -1

SELECT
	COUNT(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @ParentID

