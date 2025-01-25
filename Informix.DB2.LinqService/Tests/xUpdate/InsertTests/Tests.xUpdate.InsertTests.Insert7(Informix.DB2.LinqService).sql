BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Child
WHERE
	Child.ChildID > 1000

BeforeExecute
-- Informix.DB2 Informix

INSERT INTO Child
(
	ChildID,
	ParentID
)
VALUES
(
	1001,
	1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = @id

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Child
WHERE
	Child.ChildID > 1000

