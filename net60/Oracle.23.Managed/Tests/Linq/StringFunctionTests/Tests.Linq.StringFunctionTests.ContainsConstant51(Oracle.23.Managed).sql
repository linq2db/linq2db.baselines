﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ps Varchar2(3) -- String
SET     @ps = '%[%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND '123[456' LIKE :ps ESCAPE '~'

