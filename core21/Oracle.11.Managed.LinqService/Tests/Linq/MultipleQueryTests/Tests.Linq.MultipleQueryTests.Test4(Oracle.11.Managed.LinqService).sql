BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	key_data_result.ParentID,
	key_data_result.Value1,
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

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	p.ParentID,
	p.Value1
FROM
	Parent p
ORDER BY
	p.ParentID

