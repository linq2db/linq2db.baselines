BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	x."ParentID" = :ParentID
ORDER BY
	x."ParentID" DESC
LIMIT :take

