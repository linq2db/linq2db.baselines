-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Key_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY MOD(e_1."Key_1", 2) ORDER BY e_1."Key_1" DESC) as "RowNumber",
			e_1."Key_1"
		FROM
			(
				SELECT DISTINCT
					MOD(e."ParentID", 3) as "Key_1"
				FROM
					"Parent" e
			) e_1
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."Key_1" DESC

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

