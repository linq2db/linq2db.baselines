﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	CAST("p"."FirstName" AS BLOB) NOT LIKE '%Joh%' ESCAPE '~' AND
	"p"."PersonID" = 1

