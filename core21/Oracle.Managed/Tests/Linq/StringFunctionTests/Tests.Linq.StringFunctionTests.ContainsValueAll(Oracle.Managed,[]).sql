﻿BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @s Varchar2(8) -- String
SET     @s = '123[]456'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE '%[]%' ESCAPE '~'

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @s Varchar2(8) -- String
SET     @s = '123[]456'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s NOT LIKE '%[]%' ESCAPE '~'

