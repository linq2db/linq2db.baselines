BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT 
	c_1."ParentID", 
	c_1."ChildID"
FROM
	"Child" c_1,
	( 
		SELECT 
			p."ParentID"
		FROM
			"GrandChild" p
		LIMIT :take
	) t1
WHERE
	c_1."ParentID" = t1."ParentID"

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 3
DECLARE @skip Integer -- Int32
SET     @skip = 12

SELECT 
	c_1."ParentID", 
	c_1."ChildID"
FROM
	"Child" c_1,
	( 
		SELECT 
			p."ParentID"
		FROM
			"GrandChild" p
		LIMIT :take OFFSET :skip 
	) t1
WHERE
	c_1."ParentID" = t1."ParentID"

