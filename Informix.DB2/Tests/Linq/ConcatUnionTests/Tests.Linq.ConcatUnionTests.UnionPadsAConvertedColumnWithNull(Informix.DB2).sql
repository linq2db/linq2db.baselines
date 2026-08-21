-- Informix.DB2 Informix
SELECT
	x.Id,
	x.Flag
FROM
	ConvertedFlagRow x
UNION
SELECT
	x_1.Id,
	NULL::NChar(1)
FROM
	ConvertedFlagRow x_1

