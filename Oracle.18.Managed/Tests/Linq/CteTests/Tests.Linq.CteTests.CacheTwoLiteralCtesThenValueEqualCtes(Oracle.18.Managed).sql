-- Oracle.18.Managed Oracle.Managed Oracle12
WITH CTE_1 ("ChildID")
AS
(
	SELECT
		c_1."ChildID"
	FROM
		"Child" c_1
	WHERE
		c_1."ChildID" <= 40
),
CTE_2 ("ChildID")
AS
(
	SELECT
		c_2."ChildID"
	FROM
		"Child" c_2
	WHERE
		c_2."ChildID" <= 30
)
SELECT
	COUNT(*)
FROM
	(
		SELECT
			t1."ChildID"
		FROM
			CTE_1 t1
		UNION ALL
		SELECT
			t2."ChildID"
		FROM
			CTE_2 t2
	) t3

-- Oracle.18.Managed Oracle.Managed Oracle12
WITH CTE_1 ("ChildID")
AS
(
	SELECT
		c_1."ChildID"
	FROM
		"Child" c_1
	WHERE
		c_1."ChildID" <= 40
)
SELECT
	COUNT(*)
FROM
	(
		SELECT
			t1."ChildID"
		FROM
			CTE_1 t1
		UNION ALL
		SELECT
			t2."ChildID"
		FROM
			CTE_1 t2
	) t3

