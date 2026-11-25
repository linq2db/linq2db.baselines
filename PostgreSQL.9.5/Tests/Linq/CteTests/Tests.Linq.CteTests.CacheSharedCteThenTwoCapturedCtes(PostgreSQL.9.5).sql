-- PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 30

WITH "CTE_1" ("ChildID")
AS
(
	SELECT
		c_1."ChildID"
	FROM
		"Child" c_1
	WHERE
		c_1."ChildID" > :id
)
SELECT
	COUNT(*)
FROM
	(
		SELECT
			t1."ChildID"
		FROM
			"CTE_1" t1
		UNION ALL
		SELECT
			t2."ChildID"
		FROM
			"CTE_1" t2
	) t3

-- PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 30
DECLARE @id_1 Integer -- Int32
SET     @id_1 = 40

WITH "CTE_1" ("ChildID")
AS
(
	SELECT
		c_1."ChildID"
	FROM
		"Child" c_1
	WHERE
		c_1."ChildID" > :id
),
"CTE_2" ("ChildID")
AS
(
	SELECT
		c_2."ChildID"
	FROM
		"Child" c_2
	WHERE
		c_2."ChildID" > :id_1
)
SELECT
	COUNT(*)
FROM
	(
		SELECT
			t1."ChildID"
		FROM
			"CTE_1" t1
		UNION ALL
		SELECT
			t2."ChildID"
		FROM
			"CTE_2" t2
	) t3

