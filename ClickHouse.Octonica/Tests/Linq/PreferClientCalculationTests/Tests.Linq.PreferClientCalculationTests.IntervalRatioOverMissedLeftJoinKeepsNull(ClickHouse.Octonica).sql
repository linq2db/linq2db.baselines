-- ClickHouse.Octonica ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(e.Date2, 7)) - toUnixTimestamp64Nano(toDateTime64(e.Date, 7)), toInt64(100))) / toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(j.Date2, 7)) - toUnixTimestamp64Nano(toDateTime64(j.Date, 7)), toInt64(100)))
FROM
	MissedDivisorEntity e
		LEFT JOIN MissedDivisorEntity j ON j.Id = e.Id + 1000

