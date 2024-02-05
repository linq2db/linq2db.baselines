BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	key_data_result.ParentID,
	key_data_result.Value1,
	_c.ParentID,
	_c.ChildID
FROM
	(
		SELECT DISTINCT
			t1.ParentID as ParentID,
			t1.Value1 as Value1
		FROM
			(
				SELECT
					p.ParentID as ParentID,
					p.Value1 as Value1
				FROM
					Parent p
				LIMIT toInt32(10)
			) t1
	) key_data_result
		INNER JOIN Child _c ON _c.ParentID = key_data_result.ParentID
ORDER BY
	_c.ChildID

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
LIMIT toInt32(10)

