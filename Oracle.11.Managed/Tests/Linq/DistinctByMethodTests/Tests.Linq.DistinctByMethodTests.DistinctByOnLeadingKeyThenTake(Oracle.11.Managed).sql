-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 2

SELECT
	t2."RowNumber",
	t2."Value1"
FROM
	(
		SELECT
			t1."RowNumber_1" as "RowNumber",
			t1."Value1"
		FROM
			(
				SELECT
					ROW_NUMBER() OVER (PARTITION BY MOD(e."ParentID", 3) ORDER BY MOD(e."ParentID", 3), e."ParentID" DESC) as "RowNumber",
					e."ParentID" as "RowNumber_1",
					e."Value1"
				FROM
					"Parent" e
			) t1
		WHERE
			t1."RowNumber" = 1
		ORDER BY
			MOD(t1."RowNumber_1", 3),
			t1."RowNumber_1" DESC
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

