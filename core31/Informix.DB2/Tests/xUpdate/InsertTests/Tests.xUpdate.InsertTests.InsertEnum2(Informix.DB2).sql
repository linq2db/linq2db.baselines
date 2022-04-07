﻿BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1

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
DECLARE @id Integer(4) -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	Parent t1
WHERE
	t1.ParentID = @id

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Parent
WHERE
	Parent.ParentID > 1000

