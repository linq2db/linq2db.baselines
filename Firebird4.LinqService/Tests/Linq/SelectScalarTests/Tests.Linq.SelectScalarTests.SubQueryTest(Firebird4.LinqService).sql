﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	(
		SELECT FIRST 1
			"p"."Value1"
		FROM
			"Parent" "p"
	)
FROM rdb$database

