-- ClickHouse.Octonica ClickHouse

SELECT
	(
		SELECT
			l.ParentID + 1 as Id
		FROM
			Child l
		LIMIT 1
	)
FROM
	Parent sep

