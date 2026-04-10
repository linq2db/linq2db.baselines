-- PostgreSQL.13 PostgreSQL

WITH RECURSIVE "MY_CTE" ("ChildID", "ParentID", "GrandChildID")
AS
(
	SELECT
		gc1."ChildID",
		gc1."GrandChildID",
		gc1."GrandChildID"
	FROM
		"GrandChild" gc1
	UNION ALL
	SELECT
		t1."ChildID",
		t1."ParentID",
		t1."ChildID" + 1
	FROM
		(
			SELECT
				ct."ChildID",
				ct."ParentID"
			FROM
				"GrandChild" gc
					INNER JOIN "Parent" p ON p."ParentID" = gc."ParentID"
					INNER JOIN "MY_CTE" ct ON ct."ChildID" = gc."ChildID"
			WHERE
				ct."GrandChildID" <= 10
		) t1
)
SELECT
	t2."ChildID",
	t2."ParentID",
	t2."GrandChildID"
FROM
	"MY_CTE" t2

