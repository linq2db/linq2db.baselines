﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @v1 Int32
SET     @v1 = 1

UPDATE
	"Parent"
SET
	"Parent"."Value1" = :v1
WHERE
	"Parent"."Value1" = :v1

