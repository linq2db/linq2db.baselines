﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	ROWNUM <= :take

