-- Informix.DB2 Informix

DELETE FROM
	Child
WHERE
	Child.ChildID > 1000

-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

INSERT INTO Child
(
	ParentID,
	ChildID
)
SELECT
	c_1.ParentID,
	@id::Int
FROM
	Child c_1
WHERE
	c_1.ChildID = 11

-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = @id

-- Informix.DB2 Informix

DELETE FROM
	Child
WHERE
	Child.ChildID > 1000

