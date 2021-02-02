BeforeExecute
-- SQLite.Default SQLite.MS SQLite

SELECT
	[t1].[ParentID],
	[t1].[ChildID],
	[t1].[GrandChildID]
FROM
	[GrandChild] [t1]

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	p."ParentID",
	t2.gc,
	t2."ChildID",
	t2."GrandChildID"
FROM
	"Child" ch
		INNER JOIN "Parent" p ON ch."ParentID" = p."ParentID"
		LEFT JOIN (
			SELECT
				gc."ParentID" as gc,
				gc."ChildID",
				gc."GrandChildID"
			FROM
				"GrandChild" gc
					INNER JOIN (
						SELECT
							Max(t1."GrandChildID") as c1
						FROM
							"GrandChild" t1
						GROUP BY
							t1."ChildID"
					) max_1 ON (gc."GrandChildID" = max_1.c1 OR gc."GrandChildID" IS NULL AND max_1.c1 IS NULL)
		) t2 ON p."ParentID" = t2.gc
WHERE
	(t2.gc IS NULL AND t2."ChildID" IS NULL AND t2."GrandChildID" IS NULL OR (t2."GrandChildID" NOT IN (111, 222) OR t2."GrandChildID" IS NULL))

