﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @s Text(7) -- String
SET     @s = '123n456'
DECLARE @toTest Text(3) -- String
SET     @toTest = '%n%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE :toTest ESCAPE '~'

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @s Text(7) -- String
SET     @s = '123n456'
DECLARE @toTest Text(3) -- String
SET     @toTest = '%n%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s NOT LIKE :toTest ESCAPE '~'

