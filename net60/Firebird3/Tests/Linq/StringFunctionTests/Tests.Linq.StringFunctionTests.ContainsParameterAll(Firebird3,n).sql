﻿BeforeExecute
-- Firebird3 Firebird
DECLARE @toTest VarChar(3) -- String
SET     @toTest = '%n%'

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123n456' LIKE @toTest ESCAPE '~'

