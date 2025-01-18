﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @group Integer(4) -- Int32
SET     @group = 7

SELECT
	"p"."Id",
	LAG("p"."Id", 1, -1) OVER(ORDER BY "p"."Order")
FROM
	"Position" "p"
WHERE
	"p"."Group" = @group

