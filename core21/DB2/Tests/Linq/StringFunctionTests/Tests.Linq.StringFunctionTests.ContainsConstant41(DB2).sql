﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @s VarChar(7) -- String
SET     @s = '123[456'
DECLARE @ps_1 VarChar(3) -- String
SET     @ps_1 = '%[%'

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND @s LIKE @ps_1 ESCAPE '~'

