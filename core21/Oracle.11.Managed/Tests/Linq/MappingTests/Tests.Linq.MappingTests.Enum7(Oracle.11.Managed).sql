﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @v1 Int32
SET     @v1 = 1
DECLARE @v2 Int32
SET     @v2 = 1

UPDATE
	"Parent"
SET
	"Parent"."Value1" = :v1
WHERE
	"Parent"."Value1" = :v2

