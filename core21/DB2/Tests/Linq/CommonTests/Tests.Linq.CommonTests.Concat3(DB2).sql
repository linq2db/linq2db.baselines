﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	((("p"."FirstName" || ' ') || RTrim(Char(1))) || RTrim(Char(2))) = 'John 12'

