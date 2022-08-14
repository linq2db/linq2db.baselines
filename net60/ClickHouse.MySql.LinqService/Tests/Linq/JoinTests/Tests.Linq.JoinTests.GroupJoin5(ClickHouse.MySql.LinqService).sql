BeforeExecute
-- ClickHouse.MySql ClickHouse

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
			p.ParentID >= toInt32(1)
	) key_data_result
		INNER JOIN Child _ch ON _ch.ParentID = key_data_result.ParentID
ORDER BY
	_ch.ChildID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID >= toInt32(1)
ORDER BY
	p.ParentID

