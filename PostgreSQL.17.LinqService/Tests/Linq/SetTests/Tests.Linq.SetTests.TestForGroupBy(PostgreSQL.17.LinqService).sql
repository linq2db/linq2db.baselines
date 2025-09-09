BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	x."ParentID",
	x."ChildID",
	x."GrandChildID"
FROM
	"GrandChild" x
WHERE
	x."ParentID" IN (2)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	x."ParentID",
	x."ChildID",
	x."GrandChildID"
FROM
	"GrandChild" x
WHERE
	x."ParentID" IN (3)

