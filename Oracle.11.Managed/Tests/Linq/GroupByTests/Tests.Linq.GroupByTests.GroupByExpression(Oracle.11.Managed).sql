﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @defValue Int32
SET     @defValue = 10

SELECT
	Nvl(MIN(gr."ParentID"), :defValue)
FROM
	"Parent" gr

