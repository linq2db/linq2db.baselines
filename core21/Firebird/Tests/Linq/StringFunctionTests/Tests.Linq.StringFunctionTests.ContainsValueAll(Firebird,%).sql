﻿BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND ('123%456' CONTAINING '%')

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND ('123%456' NOT CONTAINING '%')

