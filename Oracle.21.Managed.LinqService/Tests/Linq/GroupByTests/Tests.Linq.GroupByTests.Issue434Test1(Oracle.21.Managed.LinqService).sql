﻿BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @input Varchar2(6) -- String
SET     @input = '%test%'

SELECT
	p."PersonID",
	gjd_ri."PersonID",
	gjd_ri."Diagnosis"
FROM
	"Person" p
		INNER JOIN "Patient" gjd_ri ON gjd_ri."PersonID" = p."PersonID"
WHERE
	Lower(p."FirstName") LIKE :input ESCAPE '~'

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @input Varchar2(6) -- String
SET     @input = '%test%'

SELECT
	p."FirstName",
	p."PersonID"
FROM
	"Person" p
WHERE
	Lower(p."FirstName") LIKE :input ESCAPE '~'

