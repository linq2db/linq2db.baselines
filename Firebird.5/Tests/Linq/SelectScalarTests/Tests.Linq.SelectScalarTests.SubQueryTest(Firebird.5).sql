﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	(
		SELECT
			"p"."Value1"
		FROM
			"Parent" "p"
		FETCH NEXT 1 ROWS ONLY
	)
FROM rdb$database

