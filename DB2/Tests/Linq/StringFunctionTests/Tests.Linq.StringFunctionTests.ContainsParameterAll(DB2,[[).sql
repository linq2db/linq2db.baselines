﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @s VarChar(8) -- String
SET     @s = '123[[456'
DECLARE @toTest VarChar(4) -- String
SET     @toTest = '%[[%'

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND @s LIKE @toTest ESCAPE '~'

