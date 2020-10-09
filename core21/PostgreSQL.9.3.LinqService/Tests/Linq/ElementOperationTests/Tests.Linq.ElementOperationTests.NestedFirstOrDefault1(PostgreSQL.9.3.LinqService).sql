BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	t2."ParentID", 
	t2."ChildID"
FROM
	"Parent" p
		LEFT JOIN LATERAL ( 
			SELECT 
				t1."ParentID", 
				t1."ChildID"
			FROM
				"Child" t1
			LIMIT :take
		) t2 ON 1=1

