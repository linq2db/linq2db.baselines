﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @s VarChar(7) -- String
SET     @s = '123n456'
DECLARE @toTest_1 VarChar(3) -- String
SET     @toTest_1 = '%n%'

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND @s LIKE @toTest_1 ESCAPE '~'

