BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue1982Table

BeforeExecute
-- ClickHouse.Octonica ClickHouse

CREATE TABLE IF NOT EXISTS Issue1982Table
(
	Time     Int64,
	DateTime DateTime64(7)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				Issue1982Table t1
			WHERE
				t1.Time < toInt64((toUnixTimestamp64Nano(toDateTime64(t1.DateTime, 7)) - toUnixTimestamp64Nano(toDateTime64(toDate32(t1.DateTime), 7))) / 100)
		)
			THEN true
		ELSE false
	END

BeforeExecute
-- ClickHouse.Octonica ClickHouse

DROP TABLE IF EXISTS Issue1982Table

