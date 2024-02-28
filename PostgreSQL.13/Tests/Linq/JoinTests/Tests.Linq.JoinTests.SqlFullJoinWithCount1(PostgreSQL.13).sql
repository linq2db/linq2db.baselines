BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	COUNT(left_1."ParentID"),
	COUNT(p."ParentID"),
	COUNT(*)
FROM
	"Parent" left_1
		FULL JOIN "Parent" p ON p."ParentID" = left_1."ParentID"
LIMIT :take

