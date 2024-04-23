BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.ParentID + 1
FROM
	Parent p
		CROSS JOIN Child _

