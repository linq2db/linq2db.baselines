﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"pp"."PersonID",
	'  ' || "pp"."FirstName" || ' '
FROM
	"Person" "pp"
WHERE
	"pp"."PersonID" = 1 AND RTRIM(('  ' || "pp"."FirstName" || ' '), ' ') = '  John'

