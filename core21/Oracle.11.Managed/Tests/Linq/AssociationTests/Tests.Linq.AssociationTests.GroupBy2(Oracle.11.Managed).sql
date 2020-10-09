BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	a_Parent1.ParentID, 
	a_Parent1.Value1
FROM
	Child t1
		INNER JOIN Parent a_Parent1 ON t1.ParentID = a_Parent1.ParentID
GROUP BY
	a_Parent1.ParentID,
	a_Parent1.Value1

