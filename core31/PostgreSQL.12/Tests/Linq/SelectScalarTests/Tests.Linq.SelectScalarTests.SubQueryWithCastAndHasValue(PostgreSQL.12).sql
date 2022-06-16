BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1
WHERE
	(
		SELECT
			r."Value1"
		FROM
			"Parent" r
		LIMIT :take
	) IS NOT NULL

