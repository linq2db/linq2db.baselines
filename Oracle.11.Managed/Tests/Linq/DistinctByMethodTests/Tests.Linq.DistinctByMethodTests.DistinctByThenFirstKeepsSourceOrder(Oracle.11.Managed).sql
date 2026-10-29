-- Oracle.11.Managed Oracle11
SELECT
	t2."ParentID",
	t2."Value1"
FROM
	(
		SELECT
			t1."ParentID",
			t1."Value1"
		FROM
			(
				SELECT
					ROW_NUMBER() OVER (PARTITION BY -e."ParentID" ORDER BY e."ParentID") as "RowNumber",
					e."ParentID",
					e."Value1"
				FROM
					"Parent" e
			) t1
		WHERE
			t1."RowNumber" = 1
		ORDER BY
			t1."ParentID"
	) t2
WHERE
	ROWNUM <= 1
ORDER BY
	t2."ParentID"

