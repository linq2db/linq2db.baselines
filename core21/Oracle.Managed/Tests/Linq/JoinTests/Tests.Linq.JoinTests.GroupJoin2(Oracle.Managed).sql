BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	key_data_result.ParentID, 
	key_data_result.Value1, 
	gjd_c.ParentID, 
	gjd_c.ChildID
FROM
	( 
		SELECT DISTINCT 
			p.ParentID, 
			p.Value1
		FROM
			Parent p
		WHERE
			p.ParentID = 1
	) key_data_result
		INNER JOIN Child gjd_c ON gjd_c.ParentID = key_data_result.ParentID

BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	p.ParentID, 
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = 1

