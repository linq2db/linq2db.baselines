﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 10
DECLARE @take Integer(4) -- Int32
SET     @take = 20

SELECT
	"cp"."ParentID",
	"c_1"."ChildID"
FROM
	"Parent" "cp"
		CROSS JOIN (
			SELECT
				"t4"."ParentID",
				"t4"."ChildID"
			FROM
				(
					SELECT
						"t3"."ParentID",
						"t3"."ChildID",
						ROW_NUMBER() OVER (ORDER BY "t3"."ParentID") as RN
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
				) "t4"
			WHERE
				"t4".RN > @skip AND "t4".RN <= @take
		) "c_1"
WHERE
	"c_1"."ParentID" = "cp"."ParentID"
ORDER BY
	"cp"."ParentID"
FETCH FIRST 10 ROWS ONLY

