-- ClickHouse.Octonica ClickHouse
SELECT
	t.Id,
	RANK() OVER ()
FROM
	WindowFunctionTestEntity t

