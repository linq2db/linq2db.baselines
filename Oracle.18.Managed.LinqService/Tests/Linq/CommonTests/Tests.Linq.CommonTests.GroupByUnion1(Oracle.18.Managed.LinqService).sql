BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	tt."ParentID",
	Sum(tt.ID)
FROM
	(
		SELECT
			gr."ParentID",
			gr."ChildID" as ID
		FROM
			"Child" gr
		WHERE
			gr."ParentID" < 4
		UNION ALL
		SELECT
			Nvl(g_1."ParentID", 0) as "ParentID",
			Nvl(g_1."GrandChildID", 0) as ID
		FROM
			"GrandChild" g_1
		WHERE
			g_1."ParentID" >= 4
	) tt
GROUP BY
	tt."ParentID"
HAVING
	(Sum(tt.ID) <> 0 OR Sum(tt.ID) IS NULL)

