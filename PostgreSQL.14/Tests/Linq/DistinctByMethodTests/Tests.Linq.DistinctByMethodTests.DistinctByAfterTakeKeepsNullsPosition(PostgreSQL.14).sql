-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @take Integer -- Int32
SET     @take = 7

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	(
		SELECT DISTINCT ON (Floor(p_1."ParentID"::decimal % 2)::Int)
			p_1."Value1",
			p_1."ParentID"
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
	) t1
ORDER BY
	t1."Value1" NULLS FIRST,
	t1."ParentID"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

