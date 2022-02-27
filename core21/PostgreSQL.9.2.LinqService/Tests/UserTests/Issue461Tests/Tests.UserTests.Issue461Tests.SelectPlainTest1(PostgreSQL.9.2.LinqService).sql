BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			c_1."ParentID" + 1
		FROM
			"Child" c_1
		LIMIT :take
	)
FROM
	"Parent" p

