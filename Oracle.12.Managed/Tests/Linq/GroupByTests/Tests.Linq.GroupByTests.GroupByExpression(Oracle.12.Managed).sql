﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @defValue Int32
SET     @defValue = 10

SELECT
	Nvl(Min(gr."ParentID"), :defValue)
FROM
	"Parent" gr

