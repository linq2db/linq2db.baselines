﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CASE
		WHEN "p"."Value1" IS NOT NULL THEN "p"."Value1"
		ELSE 0
	END
FROM
	"Parent" "p"
WHERE
	"p"."Value1" > 0 AND "p"."Value1" IS NOT NULL AND "p"."Value1" IS NOT NULL

