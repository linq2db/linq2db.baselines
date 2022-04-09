BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t2."c1",
	Count(*)
FROM
	(
		SELECT
			1 as "c1"
		FROM
			"Person" t1
		WHERE
			1 = 0
	) t2
GROUP BY
	t2."c1"

