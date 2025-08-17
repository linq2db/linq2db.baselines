BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @take Int32
SET     @take = 3

SELECT
	COUNT(*)
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

