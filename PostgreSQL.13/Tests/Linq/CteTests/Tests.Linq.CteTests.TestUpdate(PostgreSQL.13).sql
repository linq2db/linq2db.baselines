-- PostgreSQL.13 PostgreSQL

WITH "CTE_1" ("ParentID")
AS
(
	SELECT
		c_1."ParentID"
	FROM
		"CteChild" c_1
	WHERE
		(c_1."ParentID"::decimal % 2)::decimal = 0
)
UPDATE
	"CteChild"
SET
	"ParentID" = "CteChild"."ChildID"
FROM
	"CTE_1" ct
WHERE
	ct."ParentID" = "CteChild"."ParentID"

-- PostgreSQL.13 PostgreSQL

SELECT
	c_1."ChildID",
	c_1."ParentID"
FROM
	"CteChild" c_1
WHERE
	(c_1."ParentID"::decimal % 2)::decimal = 0

-- PostgreSQL.13 PostgreSQL

SELECT
	c_1."ChildID"
FROM
	"CteChild" c_1
WHERE
	(c_1."ParentID"::decimal % 2)::decimal = 0

