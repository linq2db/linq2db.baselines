﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Informix.DB2 Informix
DECLARE @v1 Integer(4) -- Int32
SET     @v1 = 1

UPDATE
	Parent p
SET
	Value1 = @v1
WHERE
	p.Value1 = @v1 AND p.Value1 IS NOT NULL

