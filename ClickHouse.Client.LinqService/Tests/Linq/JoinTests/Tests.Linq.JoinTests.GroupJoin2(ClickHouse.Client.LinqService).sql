BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	key_data_result.ParentID,
	key_data_result.Value1,
	_gjd_c.ParentID,
	_gjd_c.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID,
			p.Value1 as Value1
		FROM
			Parent p
		WHERE
			p.ParentID = toInt32(1)
	) key_data_result
		INNER JOIN Child _gjd_c ON _gjd_c.ParentID = key_data_result.ParentID

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = toInt32(1)

