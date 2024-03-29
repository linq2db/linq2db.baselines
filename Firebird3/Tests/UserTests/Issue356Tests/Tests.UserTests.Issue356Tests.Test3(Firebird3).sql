﻿BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 10
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 10
DECLARE @skip Integer -- Int32
SET     @skip = 10

SELECT FIRST @take
	"cp"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "cp"
		CROSS JOIN (
			SELECT FIRST @take_1 SKIP @skip
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
			ORDER BY
				"t3"."ParentID"
		) "c_1"
WHERE
	"c_1"."ParentID" = "cp"."ParentID"
ORDER BY
	"cp"."ParentID"

