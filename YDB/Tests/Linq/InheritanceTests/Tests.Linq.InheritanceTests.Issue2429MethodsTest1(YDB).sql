-- YDB Ydb

SELECT
	x.Id as Id,
	x.`Value` as BaseValue
FROM
	BaseTable x
WHERE
	x.Id = 1
LIMIT 1

-- YDB Ydb

SELECT
	x.Id as Id,
	x.`Value` as BaseValue
FROM
	BaseTable x
WHERE
	x.Id = 1 AND x.`Value` = 100
LIMIT 1

