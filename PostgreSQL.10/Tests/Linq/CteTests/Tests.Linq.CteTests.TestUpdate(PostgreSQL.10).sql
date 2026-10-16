-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
WITH "CTE_1" ("ParentID")
AS
(
	SELECT
		c_1."ParentID"
	FROM
		"CteChild" c_1
	WHERE
		Floor(c_1."ParentID"::decimal % 2)::Int = 0
)
UPDATE
	"CteChild"
SET
	"ParentID" = "CteChild"."ChildID"
FROM
	"CTE_1" ct
WHERE
	ct."ParentID" = "CteChild"."ParentID"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	c_1."ChildID",
	c_1."ParentID"
FROM
	"CteChild" c_1
WHERE
	Floor(c_1."ParentID"::decimal % 2)::Int = 0

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	c_1."ChildID"
FROM
	"CteChild" c_1
WHERE
	Floor(c_1."ParentID"::decimal % 2)::Int = 0

