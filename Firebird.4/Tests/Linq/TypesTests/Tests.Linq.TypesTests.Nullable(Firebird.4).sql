﻿BeforeExecute
--  Firebird.4 Firebird4

SELECT
	CASE
		WHEN "p"."Value1" IS NOT NULL THEN "p"."Value1"
		ELSE 0
	END
FROM
	"Parent" "p"

