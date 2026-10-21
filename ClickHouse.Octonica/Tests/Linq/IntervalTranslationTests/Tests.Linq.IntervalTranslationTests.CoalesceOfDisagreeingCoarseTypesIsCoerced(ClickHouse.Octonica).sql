-- ClickHouse.Octonica ClickHouse
SELECT
	toFloat64(intDiv(toUnixTimestamp64Nano(toDateTime64(Coalesce(r.FinishedOn, r.OpenedOn), 7)) - toUnixTimestamp64Nano(toDateTime64(r.StartedOn, 7)), toInt64(100))) / toFloat64(36000000000)
FROM
	MixedCoarseEventRow r
ORDER BY
	r.Id

