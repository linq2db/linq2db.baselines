BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	x.ParentID, 
	Count(*)
FROM
	Child x
		INNER JOIN GrandChild y ON x.ParentID = y.ParentID AND x.ChildID = y.ChildID
GROUP BY
	x.ParentID

