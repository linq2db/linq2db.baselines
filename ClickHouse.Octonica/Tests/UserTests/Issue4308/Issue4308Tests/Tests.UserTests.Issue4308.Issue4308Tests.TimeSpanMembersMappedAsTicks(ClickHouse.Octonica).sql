-- ClickHouse.Octonica ClickHouse
SELECT
	row_1.Id,
	toInt32((toInt64(row_1.PreNotification) - (toInt64(row_1.PreNotification) % toInt64(864000000000))) / toInt64(864000000000)),
	toInt32((toInt64(row_1.PreNotification) - (toInt64(row_1.PreNotification) % toInt64(36000000000))) / toInt64(36000000000) % toInt64(24)),
	toInt32((toInt64(row_1.PreNotification) - (toInt64(row_1.PreNotification) % toInt64(600000000))) / toInt64(600000000) % toInt64(60)),
	toInt32((toInt64(row_1.PreNotification) - (toInt64(row_1.PreNotification) % toInt64(10000000))) / toInt64(10000000) % toInt64(60)),
	toInt32((toInt64(row_1.PreNotification) - (toInt64(row_1.PreNotification) % toInt64(10000))) / toInt64(10000) % toInt64(1000)),
	toInt64(row_1.PreNotification),
	toFloat64(toInt64(row_1.PreNotification)) / toFloat64(864000000000),
	toFloat64(toInt64(row_1.PreNotification)) / toFloat64(36000000000),
	toFloat64(toInt64(row_1.PreNotification)) / toFloat64(600000000),
	toFloat64(toInt64(row_1.PreNotification)) / toFloat64(10000000),
	toFloat64(toInt64(row_1.PreNotification)) / toFloat64(10000),
	toInt32((toInt64(row_1.PreNotification) - (toInt64(row_1.PreNotification) % toInt64(10))) / toInt64(10) % toInt64(1000)),
	toInt32(toInt64(row_1.PreNotification) * toInt64(100) % toInt64(1000)),
	toFloat64(toInt64(row_1.PreNotification)) / toFloat64(10),
	toFloat64(toInt64(row_1.PreNotification)) * toFloat64(100)
FROM
	Common_Topology_Locations row_1
ORDER BY
	row_1.Id

