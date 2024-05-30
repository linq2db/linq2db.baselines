BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ParentID = @ParentID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = -1

SELECT
	COUNT(*)
FROM
	Child c_1
WHERE
	c_1.ParentID = @ParentID

