BeforeExecute
-- Informix.DB2 Informix (asynchronously)

DELETE FROM
	Child
WHERE
	Child.ChildID > 1000

BeforeExecute
-- Informix.DB2 Informix (asynchronously)

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	1,
	1001
)

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

