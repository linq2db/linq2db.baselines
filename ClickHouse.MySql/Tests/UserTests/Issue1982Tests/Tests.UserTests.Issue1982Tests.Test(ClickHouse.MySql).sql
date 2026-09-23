-- ClickHouse.MySql ClickHouse
SELECT
	EXISTS(
		SELECT
			*
		FROM
			Issue1982Table t1
		WHERE
			t1.Time < toInt64((toUnixTimestamp64Nano(t1.DateTime) - toUnixTimestamp64Nano(toDateTime64(toDate32(t1.DateTime), 7))) / 100)
	)

