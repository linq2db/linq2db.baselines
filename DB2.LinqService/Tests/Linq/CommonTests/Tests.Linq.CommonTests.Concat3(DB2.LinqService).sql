﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	("p"."FirstName" || ' 12') = 'John 12'

