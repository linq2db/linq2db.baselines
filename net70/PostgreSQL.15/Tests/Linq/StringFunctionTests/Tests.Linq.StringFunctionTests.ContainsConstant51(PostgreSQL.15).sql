﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @ps Text(4) -- String
SET     @ps = '%~[%'

SELECT
	Count(*)
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND '123[456' LIKE :ps ESCAPE '~'

