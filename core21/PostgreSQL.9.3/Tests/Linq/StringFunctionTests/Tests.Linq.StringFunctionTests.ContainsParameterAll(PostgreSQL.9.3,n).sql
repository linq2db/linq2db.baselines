﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @s Text(7) -- String
SET     @s = '123n456'
DECLARE @toTest_1 Text(3) -- String
SET     @toTest_1 = '%n%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE :toTest_1 ESCAPE '~'

