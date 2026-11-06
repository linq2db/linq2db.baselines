-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 7

SELECT
	t2."RowNumber_2",
	t2."RowNumber_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."RowNumber" ORDER BY e."RowNumber_1" NULLS FIRST, e."RowNumber_2") as "RowNumber",
			e."RowNumber_1",
			e."RowNumber_2"
		FROM
			(
				SELECT
					t1."RowNumber",
					t1."RowNumber_1",
					t1."RowNumber_2"
				FROM
					(
						SELECT
							MOD(p."ParentID", 2) as "RowNumber",
							p."Value1" as "RowNumber_1",
							p."ParentID" as "RowNumber_2"
						FROM
							"Parent" p
						ORDER BY
							p."Value1" NULLS FIRST,
							p."ParentID"
					) t1
				WHERE
					ROWNUM <= :take
			) e
	) t2
WHERE
	t2."RowNumber" = 1
ORDER BY
	t2."RowNumber_1" NULLS FIRST,
	t2."RowNumber_2"

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

