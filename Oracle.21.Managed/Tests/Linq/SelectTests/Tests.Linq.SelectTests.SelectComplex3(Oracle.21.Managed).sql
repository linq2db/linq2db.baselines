﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."PersonID",
	t1."Gender",
	t1."FirstName",
	t1."LastName",
	t1."MiddleName"
FROM
	"Person" t1
WHERE
	t1."PersonID" = 1
FETCH NEXT :take ROWS ONLY

