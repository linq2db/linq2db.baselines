BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	(
		SELECT
			p.ChildID
		FROM
			Child p
		LIMIT toInt32(1)
	)
FROM
	Parent p_1

