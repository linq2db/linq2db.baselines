﻿BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	CAST("v"."Integer" AS Decimal(18, 10)) / 33,
	"v"."Decimal" / 33,
	"v"."Double" / 33
FROM
	"Issue4469Table" "v"
FETCH NEXT 2 ROWS ONLY

