﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"pp"."PersonID",
	'  ' || "pp"."FirstName" || ' '
FROM
	"Person" "pp"
WHERE
	"pp"."PersonID" = 1 AND TRIM(LEADING FROM ('  ' || "pp"."FirstName" || ' ')) = 'John '

