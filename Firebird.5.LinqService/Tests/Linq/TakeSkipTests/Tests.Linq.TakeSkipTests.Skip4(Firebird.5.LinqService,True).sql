BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @skip Integer -- Int32
SET     @skip = 3

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID" DESC
OFFSET @skip ROWS

