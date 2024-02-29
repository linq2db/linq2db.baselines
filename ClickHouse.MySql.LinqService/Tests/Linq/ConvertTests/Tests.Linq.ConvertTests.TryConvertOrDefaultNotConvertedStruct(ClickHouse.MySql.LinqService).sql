BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	Coalesce(toInt32OrNull('burp'), toInt32(-10))

