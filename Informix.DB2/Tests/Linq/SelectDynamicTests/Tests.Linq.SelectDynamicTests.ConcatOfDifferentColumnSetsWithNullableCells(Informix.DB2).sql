-- Informix.DB2 Informix
SELECT
	x.Id,
	NVL(x.Usd, NULL),
	NULL::Decimal
FROM
	Amounts x
WHERE
	x.Id = 1
UNION ALL
SELECT
	x_1.Id,
	NULL::Decimal,
	x_1.Usd * 2
FROM
	Amounts x_1
WHERE
	x_1.Id = 2

