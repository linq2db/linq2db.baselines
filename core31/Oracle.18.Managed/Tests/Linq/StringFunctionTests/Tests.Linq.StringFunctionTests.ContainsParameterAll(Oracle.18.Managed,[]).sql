﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @s Varchar2(8) -- String
SET     @s = '123[]456'
DECLARE @toTest_1 Varchar2(4) -- String
SET     @toTest_1 = '%[]%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE :toTest_1 ESCAPE '~'

