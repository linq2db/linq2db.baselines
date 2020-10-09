BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	t1."ChildID"
FROM
	"Parent" p_1
		LEFT JOIN LATERAL ( 
			SELECT 
				p."ChildID"
			FROM
				"Child" p
			LIMIT :take
		) t1 ON 1=1

