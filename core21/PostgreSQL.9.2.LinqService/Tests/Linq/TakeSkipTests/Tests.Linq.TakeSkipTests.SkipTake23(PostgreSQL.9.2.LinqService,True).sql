BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 5
DECLARE @skip_1 Integer -- Int32
SET     @skip_1 = 3

SELECT 
	t1."ParentID", 
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID"
LIMIT :take OFFSET :skip_1 

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 5
DECLARE @skip_1 Integer -- Int32
SET     @skip_1 = 3

SELECT 
	t1."ParentID", 
	t1."ChildID"
FROM
	"Child" t1
ORDER BY
	t1."ChildID"
LIMIT :take OFFSET :skip_1 

