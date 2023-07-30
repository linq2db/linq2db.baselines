BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	key_data_result.ParentID,
	key_data_result.Value1,
	detail.ParentID,
	detail.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID,
			p.Value1 as Value1
		FROM
			Parent p
		WHERE
			p.ParentID = toInt32(3)
	) key_data_result
		INNER JOIN Child detail ON detail.ParentID = key_data_result.ParentID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = toInt32(3)

