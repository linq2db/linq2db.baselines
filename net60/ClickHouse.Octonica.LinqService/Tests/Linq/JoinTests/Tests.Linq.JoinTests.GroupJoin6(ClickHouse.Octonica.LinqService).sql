BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	key_data_result.ParentID,
	_gjd_c.ParentID,
	_gjd_c.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID = toInt32(1)
	) key_data_result
		INNER JOIN Child _gjd_c ON _gjd_c.ParentID = key_data_result.ParentID + toInt32(1)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = toInt32(1)

