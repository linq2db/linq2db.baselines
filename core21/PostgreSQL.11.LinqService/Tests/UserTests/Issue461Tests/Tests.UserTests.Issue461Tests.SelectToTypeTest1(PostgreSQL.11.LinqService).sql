BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	t1."Id_1", 
	t1."Id"
FROM
	"Parent" sep
		LEFT JOIN LATERAL ( 
			SELECT 
				l."ParentID" + 1 as "Id", 
				l."ParentID" as "Id_1"
			FROM
				"Child" l
			LIMIT :take
		) t1 ON 1=1

