BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 5

SELECT
	Cast(CURRENT_TIMESTAMP as Date),
	Count(*)
FROM
	"Parent" v
		INNER JOIN "Child" s ON v."ParentID" = s."ParentID"
WHERE
	v."Value1" > 0
LIMIT :take

