-- ClickHouse.Octonica ClickHouse
SELECT
	x.Id,
	x.Flag
FROM
	ConvertedFlagRow x
UNION DISTINCT
SELECT
	x_1.Id as Id,
	toString(NULL) as Flag
FROM
	ConvertedFlagRow x_1

