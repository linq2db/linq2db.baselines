﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1010
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1010

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Informix.DB2 Informix

UPDATE
	Parent
SET
	Parent.Value1 = 1011
WHERE
	Parent.ParentID = 1010

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	Parent.ParentID >= 1000

