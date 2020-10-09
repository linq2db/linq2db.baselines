BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @id1 Integer -- Int32
SET     @id1 = 1
DECLARE @id2 Integer -- Int32
SET     @id2 = 2
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT 
	COUNT(left_1."ParentID"), 
	COUNT(t1."ParentID"), 
	COUNT(*)
FROM
	( 
		SELECT 
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" <> :id1
	) left_1
		FULL JOIN ( 
			SELECT 
				p_1."ParentID"
			FROM
				"Parent" p_1
			WHERE
				p_1."ParentID" <> :id2
		) t1 ON t1."ParentID" = left_1."ParentID"
LIMIT :take

