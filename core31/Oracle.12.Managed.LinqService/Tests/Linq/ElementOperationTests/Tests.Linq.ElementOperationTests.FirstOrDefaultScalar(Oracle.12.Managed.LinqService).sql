﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1
ORDER BY
	t1."ParentID"
FETCH NEXT :take ROWS ONLY

