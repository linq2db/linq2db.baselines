-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 7

SELECT
	t2."ParentID",
	t2."Value1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."Value1" ORDER BY e."ParentID" DESC) as "RowNumber",
			e."ParentID",
			e."Value1"
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
							p."ParentID" DESC
					) t1
				WHERE
					ROWNUM <= :take
			) e
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

