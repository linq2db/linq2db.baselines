﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	p."LastName"
FROM
	"Person" p
WHERE
	p."PersonID" = :ID AND ROWNUM <= :take

