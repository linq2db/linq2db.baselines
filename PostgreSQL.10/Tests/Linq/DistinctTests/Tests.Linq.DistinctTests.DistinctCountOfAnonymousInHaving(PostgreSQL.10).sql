-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT DISTINCT
	grp."ParentID"
FROM
	"GrandChild" grp
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					g_1."ChildID"
				FROM
					"GrandChild" g_1
				WHERE
					grp."ParentID" = g_1."ParentID" OR grp."ParentID" IS NULL AND g_1."ParentID" IS NULL
			) t1
	) > 1
ORDER BY
	grp."ParentID"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."ParentID",
	t1."ChildID",
	t1."GrandChildID"
FROM
	"GrandChild" t1

