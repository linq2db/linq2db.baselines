-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 7

SELECT
	t2."ParentID",
	t2."Value1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY MOD(e."ParentID", 2) ORDER BY e."Value1" NULLS FIRST, e."ParentID") as "RowNumber",
			e."Value1",
			e."ParentID"
		FROM
			(
				SELECT
					t1."ParentID",
					t1."Value1"
				FROM
					(
						SELECT
							p."ParentID",
							p."Value1"
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
	t2."Value1" NULLS FIRST,
	t2."ParentID"

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

