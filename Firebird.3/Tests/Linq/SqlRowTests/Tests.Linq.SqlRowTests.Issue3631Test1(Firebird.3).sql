﻿BeforeExecute
--  Firebird.3 Firebird3

SELECT
	"x"."Country",
	"x"."State"
FROM
	"Issue3631Table" "x"
WHERE
	"x"."Country" = 'US' AND "x"."State" = 'CA' OR "x"."Country" = 'US' AND "x"."State" = 'NY'

