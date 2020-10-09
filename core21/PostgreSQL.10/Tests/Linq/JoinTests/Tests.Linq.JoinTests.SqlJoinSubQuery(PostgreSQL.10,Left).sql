BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT 
	p_1."ParentID", 
	r."ChildID"
FROM
	( 
		SELECT 
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" > 0
		LIMIT :take
	) p_1
		LEFT JOIN "Child" r ON p_1."ParentID" = r."ParentID"

