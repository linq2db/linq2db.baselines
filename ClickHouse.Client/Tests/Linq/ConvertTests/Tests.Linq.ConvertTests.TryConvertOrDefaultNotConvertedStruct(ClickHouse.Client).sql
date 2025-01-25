BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	Coalesce(toInt32OrNull('burp'), -10)

