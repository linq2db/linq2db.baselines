-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	t2."ParentID",
	t2."Value1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e_1."Value1" ORDER BY e_1."ParentID" DESC) as "RowNumber",
			e_1."ParentID",
			e_1."Value1"
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
							e."ParentID" DESC
					) t1
				WHERE
					ROWNUM <= :take
			) e_1
	) t2
WHERE
	t2."RowNumber" = 1
ORDER BY
	t2."ParentID" DESC

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

