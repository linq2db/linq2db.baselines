-- Oracle.11.Managed Oracle11

SELECT
	COUNT(*)
FROM
	(
		SELECT
			CAST(1 AS Int) as "c1"
		FROM
			"Person" t1
		UNION ALL
		SELECT
			CAST(1 AS Int) as "c1"
		FROM
			"Parent" t2
	) t3

