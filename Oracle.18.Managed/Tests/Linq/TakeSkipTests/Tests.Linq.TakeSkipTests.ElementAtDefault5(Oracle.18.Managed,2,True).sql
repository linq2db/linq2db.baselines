﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 2
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."FirstName",
	t1."PersonID",
	t1."LastName",
	t1."MiddleName",
	t1."Gender"
FROM
	"Person" t1
ORDER BY
	t1."LastName"
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

