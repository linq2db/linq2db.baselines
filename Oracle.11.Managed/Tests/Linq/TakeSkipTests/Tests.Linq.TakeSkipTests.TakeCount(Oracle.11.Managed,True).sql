-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 5

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			"Child" t1
		WHERE
			ROWNUM <= :take
	) t2

