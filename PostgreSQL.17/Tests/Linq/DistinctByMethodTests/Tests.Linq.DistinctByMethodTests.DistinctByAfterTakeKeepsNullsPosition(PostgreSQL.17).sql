-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 7

SELECT DISTINCT ON (Floor(p_1."ParentID"::decimal % 2)::Int)
	p_1."ParentID",
	p_1."Value1"
FROM
	(
		SELECT
			p."ParentID",
			p."Value1"
		FROM
			"Parent" p
		ORDER BY
			p."Value1" NULLS FIRST,
			p."ParentID"
		LIMIT :take
	) p_1
ORDER BY
	Floor(p_1."ParentID"::decimal % 2)::Int,
	p_1."Value1" NULLS FIRST,
	p_1."ParentID"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

