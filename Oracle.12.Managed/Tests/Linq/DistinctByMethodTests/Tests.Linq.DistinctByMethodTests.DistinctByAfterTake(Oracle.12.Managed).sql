-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT
	t1."RowNumber_2",
	t1."RowNumber_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e_1."RowNumber" ORDER BY e_1."RowNumber_1" DESC) as "RowNumber",
			e_1."RowNumber" as "RowNumber_1",
			e_1."RowNumber_1" as "RowNumber_2"
		FROM
			(
				SELECT
					e."Value1" as "RowNumber",
					e."ParentID" as "RowNumber_1"
				FROM
					"Parent" e
				ORDER BY
					e."ParentID" DESC
				FETCH NEXT :take ROWS ONLY
			) e_1
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."RowNumber_2" DESC

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

