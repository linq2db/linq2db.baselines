﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	CAST("v"."Integer" AS Float) / 33,
	CAST("v"."Decimal" AS Float) / 33,
	"v"."Double" / 33
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

