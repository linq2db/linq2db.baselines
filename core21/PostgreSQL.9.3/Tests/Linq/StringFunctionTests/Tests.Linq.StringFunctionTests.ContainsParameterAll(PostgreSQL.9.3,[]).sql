﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @s Text(8) -- String
SET     @s = '123[]456'
DECLARE @toTest_1 Text(6) -- String
SET     @toTest_1 = '%~[~]%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE :toTest_1 ESCAPE '~'

