﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @s Varchar2(7) -- String
SET     @s = '123[456'
DECLARE @ps Varchar2(3) -- String
SET     @ps = '%[%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE :ps ESCAPE '~'

