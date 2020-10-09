BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	"a_Parent"."Value1"
FROM
	"Parent" x
		LEFT JOIN "Parent" "a_Parent" ON x."ParentID" = "a_Parent"."Value1"
WHERE
	x."Value1" IS NULL
LIMIT :take

