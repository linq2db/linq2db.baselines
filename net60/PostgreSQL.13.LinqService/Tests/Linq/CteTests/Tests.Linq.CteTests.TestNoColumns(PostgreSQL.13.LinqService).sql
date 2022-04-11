BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Count(*)
FROM
	"Child" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

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
	Count(*)
FROM
	"CTE1_" t2

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

WITH "CTE1_" ("ChildID")
AS
(
	SELECT
		c_1."ChildID"
	FROM
		"Child" c_1
)
SELECT
	Count(*)
FROM
	"CTE1_" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

WITH "CTE1_" ("ChildID")
AS
(
	SELECT
		c_1."ChildID"
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
		)
			THEN True
		ELSE False
	END

