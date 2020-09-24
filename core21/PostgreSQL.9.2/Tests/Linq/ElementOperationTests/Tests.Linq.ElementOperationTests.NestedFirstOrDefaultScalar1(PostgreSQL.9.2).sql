BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	(
		SELECT
			p."ChildID"
		FROM
			"Child" p
		LIMIT :take
	)
FROM
	"Parent" p_1

