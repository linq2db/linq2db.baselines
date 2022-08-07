BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	key_data_result.ParentID,
	key_data_result.Value1,
	_gjd_ch.ParentID,
	_gjd_ch.ChildID
FROM
	(
		SELECT DISTINCT
			t.ParentID as ParentID,
			t.Value1 as Value1
		FROM
			Parent t
		WHERE
			t.ParentID = toInt32(2)
	) key_data_result
		INNER JOIN Child _gjd_ch ON _gjd_ch.ParentID = key_data_result.ParentID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.ParentID,
	t.Value1
FROM
	Parent t
WHERE
	t.ParentID = toInt32(2)

