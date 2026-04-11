-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

WITH RECURSIVE cte
(
	"GrandChildID",
	"ParentID",
	"ChildID",
	"Level_1"
)
AS
(
	SELECT
		NULL::Int,
		p."ParentID",
		NULL::Int,
		0::Int
	FROM
		"Parent" p
	UNION ALL
	SELECT
		ct."GrandChildID",
		c_1."ParentID",
		c_1."ChildID",
		ct."Level_1" + 1
	FROM
		"Child" c_1
			INNER JOIN cte ct ON ct."ParentID" = c_1."ParentID"
	WHERE
		ct."Level_1" < 2
)
SELECT
	h."ParentID",
	h."ChildID",
	h."Level_1",
	p_1."Value1"
FROM
	cte h
		INNER JOIN "Parent" p_1 ON p_1."ParentID" = h."ChildID"

