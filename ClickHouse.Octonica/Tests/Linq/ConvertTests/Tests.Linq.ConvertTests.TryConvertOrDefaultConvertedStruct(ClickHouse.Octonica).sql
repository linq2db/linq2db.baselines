-- ClickHouse.Octonica ClickHouse

SELECT
	Coalesce(toInt32OrNull('123'), 100500)

