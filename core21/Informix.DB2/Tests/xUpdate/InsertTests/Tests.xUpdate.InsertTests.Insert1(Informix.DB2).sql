﻿BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Child
WHERE
	Child.ChildID > 1000

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

INSERT INTO Child
(
	ParentID,
	ChildID
)
VALUES
(
	1,
	@id
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

SELECT
	Count(*)
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

