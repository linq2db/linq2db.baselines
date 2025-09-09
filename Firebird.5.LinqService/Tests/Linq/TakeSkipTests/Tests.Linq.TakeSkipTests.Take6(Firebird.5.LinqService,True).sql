BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID"
FETCH NEXT @take ROWS ONLY

