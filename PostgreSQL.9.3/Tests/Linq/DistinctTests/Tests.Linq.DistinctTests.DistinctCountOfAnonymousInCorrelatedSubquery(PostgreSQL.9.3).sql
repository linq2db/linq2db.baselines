-- PostgreSQL.9.3 PostgreSQL
SELECT
	p."ParentID",
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					x."ChildID"
				FROM
					"GrandChild" x
				WHERE
					x."ParentID" = p."ParentID" AND x."ChildID" IS NOT NULL
			) t1
	)
FROM
	"Parent" p
ORDER BY
	p."ParentID"

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."ParentID",
	t1."ChildID",
	t1."GrandChildID"
FROM
	"GrandChild" t1

