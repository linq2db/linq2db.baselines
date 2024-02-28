BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	key_data_result.ParentID,
	key_data_result.Value1,
	_c.ParentID,
	_c.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID,
			p.Value1 as Value1
		FROM
			Parent p
	) key_data_result
		INNER JOIN Child _c ON key_data_result.ParentID = _c.ParentID AND _c.ParentID <> toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	key_data_result.ParentID,
	key_data_result.Value1,
	_c.ParentID,
	_c.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID as ParentID,
			p.Value1 as Value1
		FROM
			Parent p
	) key_data_result
		INNER JOIN Child _c ON key_data_result.ParentID = _c.ParentID AND _c.ParentID <> toInt32(0)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p

