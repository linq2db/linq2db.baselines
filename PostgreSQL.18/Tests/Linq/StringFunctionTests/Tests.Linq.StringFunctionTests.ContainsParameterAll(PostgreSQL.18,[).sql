﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL
DECLARE @s Text(7) -- String
SET     @s = '123[456'
DECLARE @toTest Text(4) -- String
SET     @toTest = '%~[%'

SELECT
	COUNT(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE :toTest ESCAPE '~'

