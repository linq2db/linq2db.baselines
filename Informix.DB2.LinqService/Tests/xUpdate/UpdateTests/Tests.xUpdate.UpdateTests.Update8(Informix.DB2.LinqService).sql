﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1001

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
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1002
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001

UPDATE
	Parent t1
SET
	Value1 = @Value1
WHERE
	t1.ParentID = @ParentID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001

SELECT FIRST 2
	p.ParentID,
	p.Value1
FROM
	Parent p
WHERE
	p.ParentID = @ParentID

