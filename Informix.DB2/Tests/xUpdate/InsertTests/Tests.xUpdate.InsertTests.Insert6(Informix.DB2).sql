-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	Parent.Value1 = 11

-- Informix.DB2 Informix

INSERT INTO Parent
(
	ParentID,
	Value1
)
SELECT
	c_1.ParentID + 1000,
	c_1.ChildID
FROM
	Child c_1
WHERE
	c_1.ChildID = 11

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.Value1 = 11

-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	Parent.Value1 = 11

