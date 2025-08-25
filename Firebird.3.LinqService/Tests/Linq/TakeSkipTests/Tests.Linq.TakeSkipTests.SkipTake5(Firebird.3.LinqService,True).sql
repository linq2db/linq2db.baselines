BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)
DECLARE @skip Integer -- Int32
SET     @skip = 2
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

