﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @s Varchar2(7) -- String
SET     @s = '123#456'
DECLARE @toTest Varchar2(3) -- String
SET     @toTest = '%#%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE :toTest ESCAPE '~'

