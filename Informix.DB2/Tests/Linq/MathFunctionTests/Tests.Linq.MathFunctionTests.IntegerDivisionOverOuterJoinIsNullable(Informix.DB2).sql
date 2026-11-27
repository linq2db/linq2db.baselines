-- Informix.DB2 Informix
SELECT
	p.ParentID
FROM
	Parent p
		LEFT JOIN Child c_1 ON c_1.ParentID = p.ParentID
WHERE
	(c_1.ChildID / 2)::Int <> 10 OR c_1.ChildID IS NULL

