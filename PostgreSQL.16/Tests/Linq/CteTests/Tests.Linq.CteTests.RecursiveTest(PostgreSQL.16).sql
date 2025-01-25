BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

WITH RECURSIVE "MY_CTE" ("ParentID", "ChildID", "GrandChildID")
AS
(
	SELECT
		gc1."GrandChildID",
		gc1."ChildID",
		gc1."GrandChildID"
	FROM
		"GrandChild" gc1
	UNION ALL
	SELECT
		ct."ParentID",
		ct."ChildID",
		ct."ChildID" + 1
	FROM
		"GrandChild" t1
			INNER JOIN "Parent" p ON p."ParentID" = t1."ParentID"
			INNER JOIN "MY_CTE" ct ON ct."ChildID" = t1."ChildID"
	WHERE
		ct."GrandChildID" <= 10
)
SELECT
	t2."ChildID",
	t2."ParentID",
	t2."GrandChildID"
FROM
	"MY_CTE" t2

