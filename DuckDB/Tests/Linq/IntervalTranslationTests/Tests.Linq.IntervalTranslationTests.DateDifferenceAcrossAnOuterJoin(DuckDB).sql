-- DuckDB
SELECT
	CAST(Date_Diff('microsecond', x.StartedOn, b.FinishedOn) * 10 AS DOUBLE) / 864000000000
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
ORDER BY
	x.Id

-- DuckDB
SELECT
	CAST((Date_Diff('microsecond', x.StartedOn, b.FinishedOn) * 10) // 864000000000 AS INTEGER)
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
ORDER BY
	x.Id

-- DuckDB
SELECT
	CAST(((Date_Diff('microsecond', x.StartedOn, b.FinishedOn) * 10) // 36000000000) % 24 AS INTEGER)
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
ORDER BY
	x.Id

-- DuckDB
SELECT
	CAST(((Date_Diff('microsecond', x.StartedOn, b.FinishedOn) * 10) // 600000000) % 60 AS INTEGER)
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
ORDER BY
	x.Id

-- DuckDB
SELECT
	CAST(((Date_Diff('microsecond', b.FinishedOn, x.StartedOn) * 10) // 36000000000) % 24 AS INTEGER)
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
ORDER BY
	x.Id

-- DuckDB
SELECT
	CAST(Date_Diff('microsecond', b.FinishedOn, x.StartedOn) * 10 AS DOUBLE) / 36000000000
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
ORDER BY
	x.Id

-- DuckDB
SELECT
	x.Id
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
WHERE
	CAST(Date_Diff('microsecond', x.StartedOn, b.FinishedOn) * 10 AS DOUBLE) / 864000000000 > 1

-- DuckDB
DECLARE $Hours  -- Int32
SET     $Hours = 3

SELECT
	x.Id
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
WHERE
	CAST(((Date_Diff('microsecond', x.StartedOn, b.FinishedOn) * 10) // 36000000000) % 24 AS INTEGER) = $Hours

-- DuckDB
DECLARE $Minutes  -- Int32
SET     $Minutes = 15

SELECT
	x.Id
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
WHERE
	CAST(((Date_Diff('microsecond', x.StartedOn, b.FinishedOn) * 10) // 600000000) % 60 AS INTEGER) = $Minutes

-- DuckDB
SELECT
	x.Id
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
WHERE
	CAST(Date_Diff('microsecond', b.FinishedOn, x.StartedOn) * 10 AS DOUBLE) / 36000000000 < -1

-- DuckDB
DECLARE $Hours  -- Int32
SET     $Hours = 3

SELECT
	x.Id
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
WHERE
	CAST(((Date_Diff('microsecond', b.FinishedOn, x.StartedOn) * 10) // 36000000000) % 24 AS INTEGER) = -$Hours

