﻿BeforeExecute
-- Firebird4 Firebird
DECLARE @toTest VarChar(3) -- String
SET     @toTest = '%?%'

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123?456' LIKE @toTest ESCAPE '~'

