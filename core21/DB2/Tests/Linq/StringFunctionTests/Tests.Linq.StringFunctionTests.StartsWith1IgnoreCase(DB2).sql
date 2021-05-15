﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") LIKE 'joh%' ESCAPE '~' AND "p"."PersonID" = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	Lower("p"."FirstName") NOT LIKE 'joh%' ESCAPE '~' AND
	"p"."PersonID" = 1

