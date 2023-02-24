BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	key_data_result.ParentID,
	_a.ParentID,
	_a.ChildID,
	_a.GrandChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID = toInt32(6)
	) key_data_result
		INNER JOIN GrandChild _a ON _a.ParentID = key_data_result.ParentID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	key_data_result.ParentID,
	_a.ParentID,
	_a.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID
		FROM
			Parent p
		WHERE
			p.ParentID = toInt32(6)
	) key_data_result
		INNER JOIN Child _a ON _a.ParentID = key_data_result.ParentID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = toInt32(6)

