﻿BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @take Int32
SET     @take = 1

SELECT
	1
FROM
	"Person" t1
WHERE
	ROWNUM <= :take

