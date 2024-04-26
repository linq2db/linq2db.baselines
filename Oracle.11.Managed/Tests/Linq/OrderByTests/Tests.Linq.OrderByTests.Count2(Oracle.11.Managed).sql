BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	Count(*)
FROM
	(
		SELECT
			*
		FROM
			(
				SELECT
					*
				FROM
					"Parent" t1
				ORDER BY
					t1."ParentID"
			) t2
		WHERE
			ROWNUM <= :take
	) t3

