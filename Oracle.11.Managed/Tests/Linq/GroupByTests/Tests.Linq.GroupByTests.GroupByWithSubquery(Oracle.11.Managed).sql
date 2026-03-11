-- Oracle.11.Managed Oracle11

SELECT
	t2."Key_1",
	COUNT(*)
FROM
	(
		SELECT
			1 as "Key_1"
		FROM
			"Person" t1
		WHERE
			1 = 0
	) t2
GROUP BY
	t2."Key_1"

