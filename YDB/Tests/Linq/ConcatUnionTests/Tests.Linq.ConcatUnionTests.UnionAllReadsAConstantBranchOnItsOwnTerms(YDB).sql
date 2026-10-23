-- YDB Ydb
SELECT
	CAST(NULL AS Bool) as c1,
	x.Id as Id,
	x.Flag as Flag
FROM
	ConvertedFlagRow x
UNION ALL
SELECT
	Unwrap(CAST(true AS Bool)) as c1,
	x_1.Id as Id,
	CAST(NULL AS Text) as Flag
FROM
	ConvertedFlagRow x_1

