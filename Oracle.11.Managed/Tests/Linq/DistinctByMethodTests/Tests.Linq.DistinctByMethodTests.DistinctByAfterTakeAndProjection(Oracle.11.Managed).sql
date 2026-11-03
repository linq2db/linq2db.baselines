-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 7

SELECT
	t2."RowNumber_2",
	t2."RowNumber_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."RowNumber" ORDER BY e."RowNumber_1" DESC) as "RowNumber",
			e."RowNumber" as "RowNumber_1",
			e."RowNumber_1" as "RowNumber_2"
		FROM
			(
				SELECT
					t1."RowNumber",
					t1."RowNumber_1"
				FROM
					(
						SELECT
							p."Value1" as "RowNumber",
							p."ParentID" as "RowNumber_1"
						FROM
							"Parent" p
						ORDER BY
							p."ParentID" DESC
					) t1
				WHERE
					ROWNUM <= :take
			) e
	) t2
WHERE
	t2."RowNumber" = 1
ORDER BY
	t2."RowNumber_2" DESC

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

