BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Child c_1
		INNER JOIN Parent p ON c_1.ParentID = p.ParentID
SETTINGS additional_table_filters = {'Child': 'ParentID != 2'}

