-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	Coalesce((
		SELECT
			SUM(t1."RowNumber_1")
		FROM
			(
				SELECT
					ROW_NUMBER() OVER (PARTITION BY MOD(e."RowNumber", 2) ORDER BY e."RowNumber") as "RowNumber",
					e."RowNumber" as "RowNumber_1"
				FROM
					(
						SELECT DISTINCT
							g_1."ChildID" as "RowNumber"
						FROM
							"Child" g_1
						WHERE
							g_1."ParentID" = p."ParentID"
					) e
			) t1
		WHERE
			t1."RowNumber" = 1
	), 0)
FROM
	"Parent" p

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

