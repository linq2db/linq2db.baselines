-- Oracle.11.Managed Oracle11

SELECT
	t."ParentID",
	t."ChildID"
FROM
	"Child" t
WHERE
	t."ParentID" IN (
		SELECT
			t1."ParentID"
		FROM
			(
				SELECT
					g_1."ParentID"
				FROM
					"Child" g_1
				GROUP BY
					g_1."ParentID"
				ORDER BY
					MAX(g_1."ChildID") DESC
			) t1
		WHERE
			ROWNUM <= 2
	)

-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

