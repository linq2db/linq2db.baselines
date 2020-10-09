BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	c_1."ChildID"
FROM
	"Child" c_1
LIMIT :take

