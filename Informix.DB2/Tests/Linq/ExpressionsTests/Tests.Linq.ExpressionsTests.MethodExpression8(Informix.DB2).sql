-- Informix.DB2 Informix

SELECT
	ch.ParentID,
	ch.ChildID
FROM
	Child ch
		INNER JOIN Parent p ON p.ParentID = Floor(ch.ChildID::Float / 10)::Int
WHERE
	ch.ParentID = p.ParentID

