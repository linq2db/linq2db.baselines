BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @ParentID_1 Integer -- Int32
SET     @ParentID_1 = 1
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	x."ParentID", 
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = :ParentID_1
ORDER BY
	x."ParentID" DESC
LIMIT :take

