﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123[[456' LIKE '%[[%' ESCAPE '~'

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123[[456' NOT LIKE '%[[%' ESCAPE '~'

