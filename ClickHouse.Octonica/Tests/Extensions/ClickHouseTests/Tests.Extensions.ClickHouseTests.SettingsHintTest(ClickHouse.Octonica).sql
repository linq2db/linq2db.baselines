-- ClickHouse.Octonica ClickHouse

SELECT
	p.ParentID,
	p.Value1
FROM
	Child c_1
		INNER JOIN Parent p ON c_1.ParentID = p.ParentID
SETTINGS convert_query_to_cnf=false

