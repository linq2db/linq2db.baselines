-- YDB Ydb
SELECT
	CAST(CAST(b.FinishedOn - x.StartedOn AS Int64) * 10l AS Double) / Double('864000000000') as TotalDays,
	CAST((CAST(b.FinishedOn - x.StartedOn AS Int64) * 10l) / 864000000000l AS Int32) as Days,
	CAST(((CAST(b.FinishedOn - x.StartedOn AS Int64) * 10l) / 36000000000l) % 24l AS Int32) as Hours,
	CAST(((CAST(b.FinishedOn - x.StartedOn AS Int64) * 10l) / 600000000l) % 60l AS Int32) as Minutes,
	CAST(CAST(x.StartedOn - b.FinishedOn AS Int64) * 10l AS Double) / Double('36000000000') as Reversed,
	CAST(((CAST(x.StartedOn - b.FinishedOn AS Int64) * 10l) / 36000000000l) % 24l AS Int32) as RevHours
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
ORDER BY
	x.Id

-- YDB Ydb
SELECT
	x.Id as Id
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
WHERE
	CAST(CAST(b.FinishedOn - x.StartedOn AS Int64) * 10l AS Double) / Double('864000000000') > Double('1')

-- YDB Ydb
DECLARE $Hours Int32
SET     $Hours = 3

SELECT
	x.Id as Id
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
WHERE
	CAST(((CAST(b.FinishedOn - x.StartedOn AS Int64) * 10l) / 36000000000l) % 24l AS Int32) = $Hours

-- YDB Ydb
DECLARE $Minutes Int32
SET     $Minutes = 15

SELECT
	x.Id as Id
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
WHERE
	CAST(((CAST(b.FinishedOn - x.StartedOn AS Int64) * 10l) / 600000000l) % 60l AS Int32) = $Minutes

-- YDB Ydb
SELECT
	x.Id as Id
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
WHERE
	CAST(CAST(x.StartedOn - b.FinishedOn AS Int64) * 10l AS Double) / Double('36000000000') < Double('-1')

-- YDB Ydb
DECLARE $Hours Int32
SET     $Hours = 3

SELECT
	x.Id as Id
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
WHERE
	CAST(((CAST(x.StartedOn - b.FinishedOn AS Int64) * 10l) / 36000000000l) % 24l AS Int32) = -$Hours

