-- ClickHouse.Octonica ClickHouse
SELECT
	toBool(NULL) as c1,
	x.Id,
	x.Flag
FROM
	ConvertedFlagRow x
UNION ALL
SELECT
	toBool(true) as c1,
	x_1.Id as Id,
	toString(NULL) as Flag
FROM
	ConvertedFlagRow x_1

