﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	"p"."PersonID" + 1,
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

