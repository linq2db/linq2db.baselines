BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	Count(*)
FROM
	"Child" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

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
-- PostgreSQL.9.2 PostgreSQL

WITH "CTE1_" ("ChildID")
AS
(
	SELECT
		c_2."ChildID"
	FROM
		"Child" c_2
)
SELECT
	Count(*)
FROM
	"CTE1_" t1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

WITH "CTE1_" ("ChildID")
AS
(
	SELECT
		c_2."ChildID"
	FROM
		"Child" c_2
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

