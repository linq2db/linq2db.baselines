﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p"."PersonID",
	'123' || "p"."FirstName" || '012345'
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND (CHAR_LENGTH('123' || "p"."FirstName" || '012345') - Position('321', Reverse(Substring(('123' || "p"."FirstName" || '012345') from 6 for (CHAR_LENGTH('123' || "p"."FirstName" || '012345') - 5))))) - CHAR_LENGTH('123') = 7 AND
	Position('123', '123' || "p"."FirstName" || '012345', 6) <> 0

