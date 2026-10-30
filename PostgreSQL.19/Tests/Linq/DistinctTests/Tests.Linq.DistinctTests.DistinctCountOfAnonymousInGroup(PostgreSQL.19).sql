-- PostgreSQL.19 PostgreSQL12
SELECT
	grp_1."Key_1",
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
					grp_1."Key_1" = g_1."ParentID" OR grp_1."Key_1" IS NULL AND g_1."ParentID" IS NULL
			) t1
	),
	(
		SELECT
			COUNT(*)
		FROM
			(
				SELECT DISTINCT
					g_2."ParentID",
					g_2."ChildID",
					g_2."GrandChildID"
				FROM
					"GrandChild" g_2
				WHERE
					grp_1."Key_1" = g_2."ParentID" OR grp_1."Key_1" IS NULL AND g_2."ParentID" IS NULL
			) t2
	)
FROM
	(
		SELECT DISTINCT
			grp."ParentID" as "Key_1"
		FROM
			"GrandChild" grp
	) grp_1
ORDER BY
	grp_1."Key_1"

-- PostgreSQL.19 PostgreSQL12
SELECT
	t1."ParentID",
	t1."ChildID",
	t1."GrandChildID"
FROM
	"GrandChild" t1

