BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	key_data_result.ParentID, 
	key_data_result.Value1, 
	detail.ParentID, 
	detail.ChildID
FROM
	( 
		SELECT DISTINCT 
			p.ParentID, 
			p.Value1
		FROM
			Parent p
	) key_data_result
		INNER JOIN Child detail ON key_data_result.ParentID = detail.ParentID
ORDER BY
	detail.ChildID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	p.ParentID, 
	p.Value1
FROM
	Parent p

