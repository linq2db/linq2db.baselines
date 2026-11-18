-- Informix.DB2 Informix
SELECT FIRST 2
	c_1.ChildID,
	Nvl(c_1.ChildID, 0) BETWEEN 0 AND 100,
	Nvl(c_1.ChildID, 0) NOT BETWEEN 0 AND 100,
	CASE
		WHEN c_1.ChildID BETWEEN 0 AND 100 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM
	Parent p
		LEFT JOIN Child c_1 ON p.ParentID = c_1.ParentID
WHERE
	p.ParentID = 5

