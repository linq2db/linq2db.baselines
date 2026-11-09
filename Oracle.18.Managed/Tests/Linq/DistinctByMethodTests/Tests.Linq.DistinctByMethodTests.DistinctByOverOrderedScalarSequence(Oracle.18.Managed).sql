-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY MOD(e."ParentID", 2) ORDER BY e."ParentID" DESC) as "RowNumber",
			e."ParentID"
		FROM
			"Parent" e
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."ParentID" DESC

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

