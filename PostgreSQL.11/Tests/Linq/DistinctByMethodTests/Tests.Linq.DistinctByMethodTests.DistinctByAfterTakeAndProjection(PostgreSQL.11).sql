-- PostgreSQL.11 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 7

SELECT DISTINCT ON (p_1."Value1")
	p_1."ParentID",
	p_1."Value1"
FROM
	(
		SELECT
			p."Value1",
			p."ParentID"
		FROM
			"Parent" p
		ORDER BY
			p."ParentID" DESC
		LIMIT :take
	) p_1
ORDER BY
	p_1."Value1",
	p_1."ParentID" DESC

-- PostgreSQL.11 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

