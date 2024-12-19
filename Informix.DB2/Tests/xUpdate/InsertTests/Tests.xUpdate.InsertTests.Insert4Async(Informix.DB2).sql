BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DELETE FROM
	Child
WHERE
	Child.ChildID > 1000

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
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

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = @id

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DELETE FROM
	Child
WHERE
	Child.ChildID > 1000

