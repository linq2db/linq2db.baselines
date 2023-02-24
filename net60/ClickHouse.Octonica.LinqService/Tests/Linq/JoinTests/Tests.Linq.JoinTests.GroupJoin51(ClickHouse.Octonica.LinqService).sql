BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	key_data_result.ParentID,
	key_data_result.Value1,
	_gjd_ch.ParentID,
	_gjd_ch.ChildID
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
		INNER JOIN Child _gjd_ch ON _gjd_ch.ParentID = key_data_result.ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	key_data_result.ParentID,
	key_data_result.Value1,
	_ch.ParentID,
	_ch.ChildID
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
		INNER JOIN Child _ch ON _ch.ParentID = key_data_result.ParentID
ORDER BY
	_ch.ChildID DESC

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = toInt32(1)

