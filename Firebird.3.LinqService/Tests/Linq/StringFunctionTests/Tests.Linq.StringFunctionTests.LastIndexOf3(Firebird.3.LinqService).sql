﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."PersonID",
	'123' || "p"."FirstName" || '0123451234'
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND (11 - Position('321', Reverse(Substring(('123' || "p"."FirstName" || '0123451234') from 6 for 6)))) - CHAR_LENGTH('123') = 7 AND
	Position('123', Left('123' || "p"."FirstName" || '0123451234', 11), 6) <> 0

