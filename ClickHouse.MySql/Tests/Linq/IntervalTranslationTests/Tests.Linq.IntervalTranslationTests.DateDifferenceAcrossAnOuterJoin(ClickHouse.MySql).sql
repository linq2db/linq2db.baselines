-- ClickHouse.MySql ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(b.FinishedOn) - toUnixTimestamp64Nano(x.StartedOn), toInt64(100))) / toFloat64(864000000000)
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
ORDER BY
	x.Id

-- ClickHouse.MySql ClickHouse
SELECT
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(b.FinishedOn) - toUnixTimestamp64Nano(x.StartedOn), toInt64(100)), toInt64(864000000000)))
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
ORDER BY
	x.Id

-- ClickHouse.MySql ClickHouse
SELECT
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(b.FinishedOn) - toUnixTimestamp64Nano(x.StartedOn), toInt64(100)), toInt64(36000000000)) % toInt64(24))
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
ORDER BY
	x.Id

-- ClickHouse.MySql ClickHouse
SELECT
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(b.FinishedOn) - toUnixTimestamp64Nano(x.StartedOn), toInt64(100)), toInt64(600000000)) % toInt64(60))
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
ORDER BY
	x.Id

-- ClickHouse.MySql ClickHouse
SELECT
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(x.StartedOn) - toUnixTimestamp64Nano(b.FinishedOn), toInt64(100)), toInt64(36000000000)) % toInt64(24))
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
ORDER BY
	x.Id

-- ClickHouse.MySql ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(x.StartedOn) - toUnixTimestamp64Nano(b.FinishedOn), toInt64(100))) / toFloat64(36000000000)
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
ORDER BY
	x.Id

-- ClickHouse.MySql ClickHouse
SELECT
	x.Id
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(b.FinishedOn) - toUnixTimestamp64Nano(x.StartedOn), toInt64(100))) / toFloat64(864000000000) > toFloat64(1)

-- ClickHouse.MySql ClickHouse
SELECT
	x.Id
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
WHERE
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(b.FinishedOn) - toUnixTimestamp64Nano(x.StartedOn), toInt64(100)), toInt64(36000000000)) % toInt64(24)) = 3

-- ClickHouse.MySql ClickHouse
SELECT
	x.Id
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
WHERE
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(b.FinishedOn) - toUnixTimestamp64Nano(x.StartedOn), toInt64(100)), toInt64(600000000)) % toInt64(60)) = 15

-- ClickHouse.MySql ClickHouse
SELECT
	x.Id
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
WHERE
	toFloat64(intDiv(toUnixTimestamp64Nano(x.StartedOn) - toUnixTimestamp64Nano(b.FinishedOn), toInt64(100))) / toFloat64(36000000000) < toFloat64(-1)

-- ClickHouse.MySql ClickHouse
SELECT
	x.Id
FROM
	OuterJoinLeft x
		LEFT JOIN OuterJoinRight b ON b.Id = x.Id
WHERE
	toInt32(intDiv(intDiv(toUnixTimestamp64Nano(x.StartedOn) - toUnixTimestamp64Nano(b.FinishedOn), toInt64(100)), toInt64(36000000000)) % toInt64(24)) = negate(3)

