BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 7
DECLARE @skip_1 Integer -- Int32
SET     @skip_1 = 1
DECLARE @skip Integer -- Int32
SET     @skip = 2

SELECT 
	t2."ParentID", 
	t2."ChildID"
FROM
	( 
		SELECT 
			t1."ChildID", 
			t1."ParentID"
		FROM
			"Child" t1
		ORDER BY
			t1."ChildID" DESC
		LIMIT :take OFFSET :skip_1 
	) t2
ORDER BY
	t2."ChildID"
OFFSET :skip 

