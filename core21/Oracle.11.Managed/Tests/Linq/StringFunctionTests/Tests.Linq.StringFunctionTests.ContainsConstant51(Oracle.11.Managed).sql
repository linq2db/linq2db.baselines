﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ps_1 Varchar2(3) -- String
SET     @ps_1 = '%[%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND '123[456' LIKE :ps_1 ESCAPE '~'

