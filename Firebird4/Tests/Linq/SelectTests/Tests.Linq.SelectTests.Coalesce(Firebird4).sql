﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	"p"."PersonID",
	Coalesce("p"."FirstName", 'None'),
	Coalesce("p"."MiddleName", 'None')
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

