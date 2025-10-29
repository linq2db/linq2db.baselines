-- Informix.DB2 Informix

DELETE FROM
	Child
WHERE
	Child.ChildID > 1000

-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1
DECLARE @ChildID Integer(4) -- Int32
SET     @ChildID = 1001

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	@ParentID,
	@ChildID
)

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = 1001

-- Informix.DB2 Informix

DELETE FROM
	Child
WHERE
	Child.ChildID > 1000

