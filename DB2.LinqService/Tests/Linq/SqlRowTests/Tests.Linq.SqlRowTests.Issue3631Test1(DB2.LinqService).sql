﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"x"."Country",
	"x"."State"
FROM
	"Issue3631Table" "x"
WHERE
	("x"."Country", "x"."State") = ('US', 'CA') OR ("x"."Country", "x"."State") = ('US', 'NY')

