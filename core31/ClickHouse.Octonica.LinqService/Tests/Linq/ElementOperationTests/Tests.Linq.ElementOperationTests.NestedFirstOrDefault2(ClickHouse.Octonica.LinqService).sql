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
	) key_data_result
		INNER JOIN Child detail ON key_data_result.ParentID = detail.ParentID
ORDER BY
	detail.ChildID

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p

