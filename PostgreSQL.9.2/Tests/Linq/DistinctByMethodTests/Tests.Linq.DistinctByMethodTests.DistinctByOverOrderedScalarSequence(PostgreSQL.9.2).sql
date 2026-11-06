-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."ParentID"
FROM
	(
		SELECT DISTINCT ON (Floor(p."ParentID"::decimal % 2)::Int)
			p."ParentID"
		FROM
			"Parent" p
		ORDER BY
			Floor(p."ParentID"::decimal % 2)::Int,
			p."ParentID" DESC
	) t1
ORDER BY
	t1."ParentID" DESC

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

