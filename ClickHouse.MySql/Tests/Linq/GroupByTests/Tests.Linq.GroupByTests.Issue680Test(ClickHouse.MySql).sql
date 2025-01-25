BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue680Table

BeforeExecute
-- ClickHouse.MySql ClickHouse

CREATE TABLE IF NOT EXISTS Issue680Table
(
	TimeStamp DateTime64(7)
)
ENGINE = Memory()

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	COUNT(CASE
		WHEN g_1.TimeStamp > toDateTime64('2020-02-29 17:54:55.1231234', 7)
			THEN 1
		ELSE NULL
	END)
FROM
	Issue680Table g_1
GROUP BY
	g_1.TimeStamp

BeforeExecute
-- ClickHouse.MySql ClickHouse

DROP TABLE IF EXISTS Issue680Table

