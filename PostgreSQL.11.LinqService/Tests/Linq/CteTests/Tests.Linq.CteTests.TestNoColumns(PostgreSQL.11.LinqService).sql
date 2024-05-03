BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	COUNT(*)
FROM
	"Child" t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

WITH "CTE1_" ("ParentID", "ChildID")
AS
(
	SELECT
		t1."ParentID",
		t1."ChildID"
	FROM
		"Child" t1
)
SELECT
	COUNT(*)
FROM
	"CTE1_" t2

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

WITH "CTE1_" ("C_ChildID")
AS
(
	SELECT
		c_1."ChildID"
	FROM
		"Child" c_1
)
SELECT
	COUNT(*)
FROM
	"CTE1_" t1

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

WITH "CTE1_" AS
(
	SELECT
		*
	FROM
		"Child" c_1
)
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"CTE1_" t1
		) THEN True
		ELSE False
	END

