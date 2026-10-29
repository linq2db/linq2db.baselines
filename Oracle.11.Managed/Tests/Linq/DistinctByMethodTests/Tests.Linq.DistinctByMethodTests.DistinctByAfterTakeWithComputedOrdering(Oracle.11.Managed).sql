-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 4

SELECT
	t2."ParentID",
	t2."Value1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e_1."Value1" ORDER BY Coalesce(e_1."Value1", 0), e_1."ParentID" DESC) as "RowNumber",
			e_1."Value1",
			e_1."ParentID"
		FROM
			(
				SELECT
					t1."Value1",
					t1."ParentID"
				FROM
					(
						SELECT
							e."Value1",
							e."ParentID"
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
	Coalesce(t2."Value1", 0),
	t2."ParentID" DESC

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

