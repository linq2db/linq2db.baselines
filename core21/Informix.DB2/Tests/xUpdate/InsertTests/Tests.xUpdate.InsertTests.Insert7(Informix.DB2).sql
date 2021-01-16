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
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1

INSERT INTO Child
(
	ChildID,
	ParentID
)
VALUES
(
	@id,
	@ParentID
)

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Child
WHERE
	Child.ChildID > 1000

