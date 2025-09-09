BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID"
OFFSET @skip ROWS

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @skip Integer -- Int32
SET     @skip = 4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID"
OFFSET @skip ROWS

