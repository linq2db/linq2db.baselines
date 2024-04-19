BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	gc_2."ParentID",
	gc_2."ChildID",
	gc_2."GrandChildID"
FROM
	(
		SELECT
			2 as "ParentID",
			ch."ChildID",
			gc."GrandChildID"
		FROM
			"Parent" gc_1
				INNER JOIN "Child" ch ON gc_1."ParentID" = ch."ParentID"
				INNER JOIN "GrandChild" gc ON ch."ChildID" = gc."ChildID"
	) gc_2
WHERE
	(gc_2."ParentID" = 1 AND gc_2."ChildID" = 11 AND gc_2."GrandChildID" = 111 OR gc_2."ParentID" = 2 AND gc_2."ChildID" = 21 AND gc_2."GrandChildID" = 211)

