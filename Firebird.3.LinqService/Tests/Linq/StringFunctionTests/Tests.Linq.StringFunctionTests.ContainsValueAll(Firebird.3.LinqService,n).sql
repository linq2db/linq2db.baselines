﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123n456' LIKE '%n%' ESCAPE '~'

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123n456' NOT LIKE '%n%' ESCAPE '~'

