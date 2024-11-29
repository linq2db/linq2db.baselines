BeforeExecute
-- Informix.DB2 Informix

SELECT
	3::Int,
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ChildID <= 3
UNION ALL
SELECT
	3::Int,
	c_2.ChildID
FROM
	Child c_2
WHERE
	c_2.ChildID > 3

