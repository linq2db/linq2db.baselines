﻿BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	"cp"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "cp"
		CROSS JOIN LATERAL (
			SELECT DISTINCT
				"t3"."ParentID",
				"t3"."ChildID"
			FROM
				(
					SELECT
						"t1"."ParentID",
						"t1"."ChildID"
					FROM
						"Child" "t1"
					UNION
					SELECT
						"t2"."ParentID",
						"t2"."ChildID"
					FROM
						"Child" "t2"
				) "t3"
		) "c_1"
WHERE
	"c_1"."ParentID" = "cp"."ParentID"
ORDER BY
	"cp"."ParentID",
	"c_1"."ChildID"
FETCH NEXT @take ROWS ONLY

