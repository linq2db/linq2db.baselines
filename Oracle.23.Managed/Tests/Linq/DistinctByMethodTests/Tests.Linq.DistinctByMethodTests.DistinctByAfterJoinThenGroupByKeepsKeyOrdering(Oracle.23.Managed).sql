-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."RowNumber_1",
	t1."Count_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY MOD(e."ParentID", 2) ORDER BY e."ParentID") as "RowNumber",
			e."ParentID" as "RowNumber_1",
			COUNT(*) as "Count_1"
		FROM
			"Parent" e
				INNER JOIN "Child" c_1 ON e."ParentID" = c_1."ParentID"
		GROUP BY
			e."ParentID"
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."RowNumber_1"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

