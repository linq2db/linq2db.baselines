BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1 
	c_1.ParentID, 
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ParentID > 0
ORDER BY
	c_1.ParentID

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1 
	c_1.ParentID, 
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ChildID > -100

BeforeExecute
-- Informix.DB2 Informix

SELECT 
	1
FROM
	Parent p

