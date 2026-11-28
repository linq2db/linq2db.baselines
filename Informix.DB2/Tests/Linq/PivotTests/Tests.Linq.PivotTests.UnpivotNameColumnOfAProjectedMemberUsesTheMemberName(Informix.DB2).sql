-- Informix.DB2 Informix
SELECT
	x.Id,
	'Q1'::NVarChar(255),
	x.Q1
FROM
	QuarterlySales x
WHERE
	x.Q1 IS NOT NULL
UNION ALL
SELECT
	x_1.Id,
	'Q2'::NVarChar(255),
	x_1.Q2
FROM
	QuarterlySales x_1
WHERE
	x_1.Q2 IS NOT NULL

