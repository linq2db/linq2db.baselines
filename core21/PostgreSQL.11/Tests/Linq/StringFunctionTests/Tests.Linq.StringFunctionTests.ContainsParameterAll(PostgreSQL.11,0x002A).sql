﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @s Text(7) -- String
SET     @s = '123*456'
DECLARE @toTest_1 Text(4) -- String
SET     @toTest_1 = '%~*%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE :toTest_1 ESCAPE '~'

