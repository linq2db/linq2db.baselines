-- YDB Ydb
SELECT
	x.Id as Id,
	x.Flag as Flag
FROM
	ConvertedFlagRow x
UNION
SELECT
	x_1.Id as Id,
	CAST(NULL AS Text) as Flag
FROM
	ConvertedFlagRow x_1

