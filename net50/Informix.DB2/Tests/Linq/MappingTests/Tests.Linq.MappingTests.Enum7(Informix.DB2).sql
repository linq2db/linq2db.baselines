﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @v1 Integer(4) -- Int32
SET     @v1 = 1

UPDATE
	Parent
SET
	Parent.Value1 = @v1
WHERE
	Parent.Value1 = @v1

