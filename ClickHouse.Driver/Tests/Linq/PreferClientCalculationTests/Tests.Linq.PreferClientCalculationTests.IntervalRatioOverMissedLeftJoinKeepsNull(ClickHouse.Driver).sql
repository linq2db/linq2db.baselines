-- ClickHouse.Driver ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(e.Date2) - toUnixTimestamp64Nano(e.Date), toInt64(100))) / toFloat64(intDiv(toUnixTimestamp64Nano(j.Date2) - toUnixTimestamp64Nano(j.Date), toInt64(100)))
FROM
	MissedDivisorEntity e
		LEFT JOIN MissedDivisorEntity j ON j.Id = e.Id + 1000

