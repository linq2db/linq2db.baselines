﻿BeforeExecute
-- Firebird3 Firebird

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" = 11
		)
			THEN 1
		ELSE 0
	END
FROM rdb$database

