BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.ParentID
FROM
	Parent _

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	key_data_result.ParentID,
	_c1.ParentID
FROM
	(
		SELECT DISTINCT
			_.ParentID as ParentID
		FROM
			Parent _
	) key_data_result
		INNER JOIN (
			SELECT toInt32(1) AS ParentID
			UNION ALL
			SELECT toInt32(2)
			UNION ALL
			SELECT toInt32(3)
			UNION ALL
			SELECT toInt32(4)
			UNION ALL
			SELECT toInt32(5)
			UNION ALL
			SELECT toInt32(6)
			UNION ALL
			SELECT toInt32(7)) _c1 ON _c1.ParentID = key_data_result.ParentID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	_.ParentID
FROM
	Parent _

