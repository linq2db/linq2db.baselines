﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123*456' LIKE '%*%' ESCAPE '~'

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123*456' NOT LIKE '%*%' ESCAPE '~'

