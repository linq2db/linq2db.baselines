﻿BeforeExecute
-- Firebird3 Firebird
DECLARE @v1 Integer -- Int32
SET     @v1 = 1
DECLARE @v1_1 Integer -- Int32
SET     @v1_1 = 1

UPDATE
	"Parent"
SET
	"Parent"."Value1" = @v1
WHERE
	"Parent"."Value1" = @v1_1

