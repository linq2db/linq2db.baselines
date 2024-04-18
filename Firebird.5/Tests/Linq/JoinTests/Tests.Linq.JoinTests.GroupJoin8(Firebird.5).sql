﻿BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN LATERAL (
			SELECT
				"c_1"."ParentID",
				"c_1"."ChildID"
			FROM
				"Child" "c_1"
			WHERE
				"c_1"."ParentID" = "p"."ParentID"
			ORDER BY
				"c_1"."ChildID"
			FETCH NEXT @take ROWS ONLY
		) "t1" ON 1=1

