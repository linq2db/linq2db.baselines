BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	Coalesce(p.Value1, toInt32(100))
FROM
	Parent p

