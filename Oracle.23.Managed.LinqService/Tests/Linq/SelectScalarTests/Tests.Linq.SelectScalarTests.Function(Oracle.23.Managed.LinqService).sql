﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	c_1."ChildID"
FROM
	"Child" c_1
FETCH NEXT :take ROWS ONLY

