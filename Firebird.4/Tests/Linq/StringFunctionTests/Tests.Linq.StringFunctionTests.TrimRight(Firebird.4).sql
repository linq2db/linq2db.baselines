﻿BeforeExecute
--  Firebird.4 Firebird4

SELECT
	"pp"."PersonID",
	'  ' || "pp"."FirstName" || ' '
FROM
	"Person" "pp"
WHERE
	"pp"."PersonID" = 1 AND (TRIM(TRAILING FROM '  ' || "pp"."FirstName" || ' ')) = '  John'

