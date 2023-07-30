BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	key_data_result.ParentID,
	detail.ChildID,
	detail.ParentID
FROM
	(
		SELECT DISTINCT
			_.ParentID as ParentID
		FROM
			Parent _
	) key_data_result
		INNER JOIN Child detail ON toInt64(key_data_result.ParentID) = detail.ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	_.ParentID
FROM
	Parent _

