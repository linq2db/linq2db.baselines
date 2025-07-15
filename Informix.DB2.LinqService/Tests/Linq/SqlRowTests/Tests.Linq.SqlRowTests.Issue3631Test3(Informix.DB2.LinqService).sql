BeforeExecute
-- Informix.DB2 Informix

SELECT
	x.Country,
	x."State"
FROM
	Issue3631Table x
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 'US'::NVarChar(255) AS Item1, 'CA'::NVarChar(255) AS Item2 FROM table(set{1})
				UNION ALL
				SELECT 'US'::NVarChar(255), 'NY'::NVarChar(255) FROM table(set{1})) t1
		WHERE
			x.Country = t1.Item1 AND x."State" = t1.Item2
	)

