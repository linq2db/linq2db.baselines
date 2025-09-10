BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

WITH "CTE_1" (c1)
AS
(
	SELECT
		1
	FROM
		"Child" c_1
	WHERE
		c_1."ParentID" > 1
)
SELECT
	COUNT(*)
FROM
	"CTE_1" c_2

