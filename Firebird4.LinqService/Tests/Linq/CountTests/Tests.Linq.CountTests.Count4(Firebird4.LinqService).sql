﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "t1"
	)
FROM
	"Parent" "p"

