BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
		INNER JOIN Parent p ON p.ParentID = Floor(Cast(ch.ChildID as Float) / 10D)
WHERE
	ch.ParentID = p.ParentID

