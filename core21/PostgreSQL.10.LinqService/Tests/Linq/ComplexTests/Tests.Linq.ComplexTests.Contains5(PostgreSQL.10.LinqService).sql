BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 100
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT 
	c_1."ParentID", 
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" IN (
		SELECT 
			t1."ParentID"
		FROM
			( 
				SELECT 
					p."ParentID"
				FROM
					"Parent" p
				LIMIT :take OFFSET :skip 
			) t1
	)

