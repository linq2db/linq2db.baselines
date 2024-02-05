BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Coalesce(toInt32OrNull('123'), toInt32(100500))

