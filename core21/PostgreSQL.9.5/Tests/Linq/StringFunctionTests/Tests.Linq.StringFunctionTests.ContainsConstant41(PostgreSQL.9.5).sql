﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL
DECLARE @s Text(7) -- String
SET     @s = '123[456'
DECLARE @ps_1 Text(4) -- String
SET     @ps_1 = '%~[%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND :s LIKE :ps_1 ESCAPE '~'

