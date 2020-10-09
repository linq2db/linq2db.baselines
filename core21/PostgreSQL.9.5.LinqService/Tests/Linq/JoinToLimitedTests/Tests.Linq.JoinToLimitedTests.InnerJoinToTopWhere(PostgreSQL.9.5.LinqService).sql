BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	o."ParentID", 
	o."Value1", 
	t1."ParentID", 
	t1."ChildID"
FROM
	"Parent" o
		INNER JOIN LATERAL ( 
			SELECT 
				x."ParentID", 
				x."ChildID"
			FROM
				"Child" x
			WHERE
				x."ParentID" = o."ParentID"
			LIMIT :take
		) t1 ON 1=1

