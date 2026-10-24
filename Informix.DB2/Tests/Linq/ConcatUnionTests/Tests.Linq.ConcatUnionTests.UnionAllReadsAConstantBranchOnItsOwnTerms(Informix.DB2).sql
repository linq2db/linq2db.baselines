-- Informix.DB2 Informix
SELECT
	NULL::BOOLEAN,
	x.Id,
	x.Flag
FROM
	ConvertedFlagRow x
UNION ALL
SELECT
	't'::BOOLEAN,
	x_1.Id,
	NULL::NChar(1)
FROM
	ConvertedFlagRow x_1

