BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 2

SELECT
	COUNT(*)
FROM
	(
		SELECT
			*
		FROM
			(
				SELECT
					ROWNUM as RN
				FROM
					(
						SELECT
							*
						FROM
							"Child" t1
					) t2
			) t3
		WHERE
			t3.RN > :skip
	) t4

