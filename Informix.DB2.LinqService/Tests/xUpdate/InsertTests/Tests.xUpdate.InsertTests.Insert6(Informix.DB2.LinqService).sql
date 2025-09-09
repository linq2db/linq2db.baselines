BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DELETE FROM
	Parent
WHERE
	Parent.Value1 = 11

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

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

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	COUNT(*)
FROM
	Parent p
WHERE
	p.Value1 = 11

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DELETE FROM
	Parent
WHERE
	Parent.Value1 = 11

