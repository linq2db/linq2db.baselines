-- Informix.DB2 Informix
SELECT
	NVL(x.Usd, NULL),
	x.Id,
	NULL::Int
FROM
	Amounts x
WHERE
	x.Id = 1
UNION ALL
SELECT
	NULL::Decimal,
	x_1.Id,
	x_1.Id
FROM
	Amounts x_1
WHERE
	x_1.Id = 2

