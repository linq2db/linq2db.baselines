-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 4

SELECT
	t2."RowNumber_2",
	t2."RowNumber_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e_1."RowNumber" ORDER BY e_1."RowNumber_1", e_1."RowNumber_2" DESC) as "RowNumber",
			e_1."RowNumber" as "RowNumber_1",
			e_1."RowNumber_2"
		FROM
			(
				SELECT
					t1."RowNumber",
					t1."RowNumber_1",
					t1."RowNumber_2"
				FROM
					(
						SELECT
							e."Value1" as "RowNumber",
							Coalesce(e."Value1", 0) as "RowNumber_1",
							e."ParentID" as "RowNumber_2"
						FROM
							"Parent" e
						ORDER BY
							Coalesce(e."Value1", 0),
							e."ParentID" DESC
					) t1
				WHERE
					ROWNUM <= :take
			) e_1
	) t2
WHERE
	t2."RowNumber" = 1
ORDER BY
	Coalesce(t2."RowNumber_1", 0),
	t2."RowNumber_2" DESC

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

