﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID"
FROM
	"Parent" "p"
		LEFT JOIN LATERAL (
			SELECT
				"a_Children"."ParentID"
			FROM
				"Child" "a_Children"
			WHERE
				"p"."ParentID" = "a_Children"."ParentID"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1
WHERE
	"t1"."ParentID" IS NOT NULL

