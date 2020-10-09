BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	p.Value1, 
	p.ParentID
FROM
	Parent p
WHERE
	p.Value1 + 1 = 2 AND p.ParentID = 1

