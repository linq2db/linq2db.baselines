﻿BeforeExecute
--  Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @s Varchar2(7) -- String
SET     @s = '123n456'
DECLARE @toTest Varchar2(3) -- String
SET     @toTest = '%n%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE :toTest ESCAPE '~'

