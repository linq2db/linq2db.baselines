BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Coalesce(toInt32OrNull('burp'), toInt32(-10))

