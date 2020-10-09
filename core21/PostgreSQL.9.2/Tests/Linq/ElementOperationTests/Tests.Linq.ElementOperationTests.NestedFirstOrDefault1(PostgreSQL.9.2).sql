BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	t1."ParentID", 
	t1."ChildID"
FROM
	"Child" t1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	1
FROM
	"Parent" p

