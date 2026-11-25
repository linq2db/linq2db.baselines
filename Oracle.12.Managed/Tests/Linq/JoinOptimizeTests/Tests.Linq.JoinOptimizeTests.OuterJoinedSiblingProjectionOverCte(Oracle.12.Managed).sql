-- Oracle.12.Managed Oracle.Managed Oracle12
WITH CTE_1 ("ParentID", "ChildID")
AS
(
	SELECT
		c_1."ParentID",
		c_1."ChildID"
	FROM
		"Child" c_1
	WHERE
		c_1."ChildID" > 0
)
SELECT
	p."ParentID",
	CASE
		WHEN x."ParentID" IS NULL THEN NULL
		WHEN x."ChildID" > 40 THEN p."Value1"
		ELSE p."ParentID"
	END
FROM
	"Parent" p
		LEFT JOIN CTE_1 x ON x."ParentID" = p."ParentID"
WHERE
	p."ParentID" = 1 OR p."ParentID" = 4 OR p."ParentID" = 5

-- Oracle.12.Managed Oracle.Managed Oracle12
WITH CTE_1 ("ParentID", "ChildID")
AS
(
	SELECT
		c_1."ParentID",
		c_1."ChildID"
	FROM
		"Child" c_1
	WHERE
		c_1."ChildID" > 0
)
SELECT
	p."ParentID",
	CASE
		WHEN x."ParentID" IS NULL THEN NULL
		WHEN x."ChildID" > 40 THEN p."Value1"
		ELSE p."ParentID"
	END
FROM
	"Parent" p
		LEFT JOIN CTE_1 x ON x."ParentID" >= p."ParentID" AND x."ParentID" <= p."ParentID"
WHERE
	p."ParentID" = 1 OR p."ParentID" = 4 OR p."ParentID" = 5

-- Oracle.12.Managed Oracle.Managed Oracle12
WITH CTE_1 ("Value1", "ChildID")
AS
(
	SELECT
		pp."Value1",
		cc."ChildID"
	FROM
		"Parent" pp
			LEFT JOIN "Child" cc ON cc."ParentID" = pp."ParentID"
)
SELECT
	p."ParentID",
	CASE
		WHEN x_1."c1" IS NULL THEN NULL
		WHEN x_1."ChildID" > 40 THEN p."Value1"
		ELSE p."ParentID"
	END
FROM
	"Parent" p
		LEFT JOIN (
			SELECT
				x."ChildID",
				x."Value1",
				1 as "c1"
			FROM
				CTE_1 x
		) x_1 ON x_1."Value1" >= p."ParentID" AND x_1."Value1" <= p."ParentID"
WHERE
	p."ParentID" = 1 OR p."ParentID" = 4 OR p."ParentID" = 5

