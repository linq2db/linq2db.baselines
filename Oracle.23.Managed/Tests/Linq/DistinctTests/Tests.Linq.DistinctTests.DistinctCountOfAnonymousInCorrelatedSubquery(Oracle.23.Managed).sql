-- Oracle.23.Managed Oracle.Managed Oracle12
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

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."ChildID",
	t1."GrandChildID"
FROM
	"GrandChild" t1

