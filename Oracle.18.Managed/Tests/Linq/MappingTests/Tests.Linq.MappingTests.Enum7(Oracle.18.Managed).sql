﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @v1 Int32
SET     @v1 = 1

UPDATE
	"Parent" p
SET
	"Value1" = :v1
WHERE
	p."Value1" = :v1 AND p."Value1" IS NOT NULL

