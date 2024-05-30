﻿BeforeExecute
-- Firebird.4 Firebird4

SELECT
	(
		SELECT DISTINCT
			"a_Children"."ParentID"
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID"
		FETCH NEXT 1 ROWS ONLY
	)
FROM
	"Parent" "p"

