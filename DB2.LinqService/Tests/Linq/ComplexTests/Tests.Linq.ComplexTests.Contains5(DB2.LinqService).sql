﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @take Integer(4) -- Int32
SET     @take = 101

SELECT
	"c_1"."ParentID",
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" IN (
		SELECT
			"t2"."ParentID"
		FROM
			(
				SELECT
					"t1"."ParentID"
				FROM
					(
						SELECT
							"p"."ParentID",
							ROW_NUMBER() OVER () as RN
						FROM
							"Parent" "p"
					) "t1"
				WHERE
					"t1".RN > @skip AND "t1".RN <= @take
			) "t2"
	)

