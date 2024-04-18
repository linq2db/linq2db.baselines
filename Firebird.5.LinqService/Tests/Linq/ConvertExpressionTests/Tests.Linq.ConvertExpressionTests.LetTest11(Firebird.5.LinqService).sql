﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > -100
ORDER BY
	"c_1"."ParentID"

BeforeExecute
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
				"c_1"."ParentID" > 0
			ORDER BY
				"c_1"."ParentID"
			FETCH NEXT @take ROWS ONLY
		) "t1" ON 1=1
ORDER BY
	"p"."ParentID"

