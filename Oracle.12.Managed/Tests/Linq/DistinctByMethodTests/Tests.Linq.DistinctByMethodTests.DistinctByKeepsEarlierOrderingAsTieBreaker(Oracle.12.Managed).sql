-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."ChildID" ORDER BY e."ParentID") as "RowNumber",
			e."ChildID",
			e."ParentID"
		FROM
			"Child" e
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."ParentID",
	t1."ChildID" DESC

