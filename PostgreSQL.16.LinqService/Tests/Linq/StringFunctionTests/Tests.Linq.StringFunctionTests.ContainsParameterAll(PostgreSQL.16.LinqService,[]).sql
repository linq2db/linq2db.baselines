﻿BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @s Text(8) -- String
SET     @s = '123[]456'
DECLARE @toTest Text(6) -- String
SET     @toTest = '%~[~]%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE :toTest ESCAPE '~'

