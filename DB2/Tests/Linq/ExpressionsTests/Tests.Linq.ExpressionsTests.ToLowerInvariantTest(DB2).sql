﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."Taxonomy"
FROM
	"Doctor" "p"
WHERE
	Lower("p"."Taxonomy") = 'psychiatry'

