﻿BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	COUNT(CASE
		WHEN "t"."Status" = 3 THEN 1
		ELSE NULL
	END)
FROM
	"Issue1192Table" "t"
WHERE
	"t"."MyOtherId" = 12

