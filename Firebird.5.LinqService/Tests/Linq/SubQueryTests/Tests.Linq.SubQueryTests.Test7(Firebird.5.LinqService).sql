﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"GrandChild" "g_1"
		WHERE
			"g_1"."ChildID" = "c_1"."ChildID"
	)
FROM
	"Child" "c_1"

