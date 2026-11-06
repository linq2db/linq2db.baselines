-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	t2."RowNumber",
	t2."RowNumber_1"
FROM
	(
		SELECT
			t1."RowNumber_2" as "RowNumber",
			t1."RowNumber_1"
		FROM
			(
				SELECT
					ROW_NUMBER() OVER (PARTITION BY e."Value1" ORDER BY e."ParentID" DESC) as "RowNumber",
					e."Value1" as "RowNumber_1",
					e."ParentID" as "RowNumber_2"
				FROM
					"Parent" e
			) t1
		WHERE
			t1."RowNumber" = 1
		ORDER BY
			t1."RowNumber_2" DESC
	) t2
WHERE
	ROWNUM <= :take
ORDER BY
	t2."RowNumber" DESC

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

