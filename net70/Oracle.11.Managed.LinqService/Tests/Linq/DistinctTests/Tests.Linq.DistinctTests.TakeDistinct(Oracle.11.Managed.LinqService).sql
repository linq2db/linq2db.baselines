BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 4

SELECT DISTINCT
	t2."ParentID"
FROM
	(
		SELECT
			t1."ParentID"
		FROM
			(
				SELECT
					ch."ParentID"
				FROM
					"Child" ch
				ORDER BY
					ch."ParentID"
			) t1
		WHERE
			ROWNUM <= :take
	) t2

