BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."Child"
FROM
	"Parent" sep
		LEFT JOIN LATERAL (
			SELECT
				l."ParentID" as "Child"
			FROM
				"Child" l
			LIMIT :take
		) t1 ON 1=1

