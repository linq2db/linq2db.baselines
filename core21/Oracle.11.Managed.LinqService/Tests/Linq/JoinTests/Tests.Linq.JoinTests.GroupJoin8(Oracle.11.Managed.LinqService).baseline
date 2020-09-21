BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	key_data_result.ParentID,
	key_data_result.Value1,
	c_1.ParentID,
	c_1.ChildID
FROM
	(
		SELECT DISTINCT
			p.ParentID,
			p.Value1
		FROM
			Parent p
	) key_data_result
		INNER JOIN Child c_1 ON c_1.ParentID = key_data_result.ParentID
ORDER BY
	c_1.ChildID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p

