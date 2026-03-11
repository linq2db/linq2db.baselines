-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t."ParentID",
	t."ChildID"
FROM
	"Child" t
WHERE
	t."ParentID" IN (
		SELECT
			g_1."ParentID"
		FROM
			"Child" g_1
		GROUP BY
			g_1."ParentID"
		ORDER BY
			MAX(g_1."ChildID") DESC
		FETCH NEXT 2 ROWS ONLY
	)

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

