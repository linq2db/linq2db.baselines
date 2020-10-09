BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 1
DECLARE @id2 Integer -- Int32
SET     @id2 = 2

SELECT 
	lr."ParentID", 
	lr."Value1", 
	t1."ParentID", 
	t1."Value1"
FROM
	( 
		SELECT 
			p."ParentID", 
			p."Value1"
		FROM
			"Parent" p
		WHERE
			p."ParentID" <> :id1
	) lr
		FULL JOIN ( 
			SELECT 
				p_1."ParentID", 
				p_1."Value1"
			FROM
				"Parent" p_1
			WHERE
				p_1."ParentID" <> :id2
		) t1 ON t1."ParentID" = lr."ParentID"
ORDER BY
	lr."ParentID"

