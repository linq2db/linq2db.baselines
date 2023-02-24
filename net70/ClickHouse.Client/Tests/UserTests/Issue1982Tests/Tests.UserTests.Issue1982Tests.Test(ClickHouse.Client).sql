BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue1982Table

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Issue1982Table
(
	Time     Int64,
	DateTime DateTime64(7)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Issue1982Table _
			WHERE
				_.Time < toInt64((toUnixTimestamp64Nano(toDateTime64(_.DateTime, 7)) - toUnixTimestamp64Nano(toDateTime64(toDate32(_.DateTime), 7))) / 100)
		)
			THEN toInt32(1)
		ELSE toInt32(0)
	END

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Issue1982Table

