﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"pp"."PersonID",
	'  ' || "pp"."FirstName" || ' '
FROM
	"Person" "pp"
WHERE
	"pp"."PersonID" = 1 AND TRIM(LEADING FROM ('  ' || "pp"."FirstName" || ' ')) = 'John ' AND
	TRIM(LEADING FROM ('  ' || "pp"."FirstName" || ' ')) IS NOT NULL

