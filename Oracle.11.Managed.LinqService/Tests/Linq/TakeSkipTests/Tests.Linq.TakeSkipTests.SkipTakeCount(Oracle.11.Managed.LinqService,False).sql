BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

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
				WHERE
					ROWNUM <= 7
			) t3
		WHERE
			t3.RN > 2
	) t4

