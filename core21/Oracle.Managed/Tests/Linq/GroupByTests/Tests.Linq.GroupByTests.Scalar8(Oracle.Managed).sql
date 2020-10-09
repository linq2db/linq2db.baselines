BeforeExecute
-- Oracle.Managed Oracle12

SELECT 
	Max(id.ChildID)
FROM
	Child id
GROUP BY
	id.ParentID

