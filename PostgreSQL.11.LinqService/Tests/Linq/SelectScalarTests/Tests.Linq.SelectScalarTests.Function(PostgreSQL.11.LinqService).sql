BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	c_1."ChildID"
FROM
	"Child" c_1
LIMIT :take

