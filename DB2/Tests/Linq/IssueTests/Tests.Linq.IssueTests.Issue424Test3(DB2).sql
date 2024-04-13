﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1

SELECT
	"t3"."ParentID",
	"t3"."Value1"
FROM
	(
		SELECT
			"t2"."ParentID",
			"t2"."Value1",
			ROW_NUMBER() OVER (ORDER BY "t2"."ParentID" DESC) as RN
		FROM
			(
				SELECT DISTINCT
					"t1"."ParentID",
					"t1"."Value1"
				FROM
					"Parent" "t1"
			) "t2"
	) "t3"
WHERE
	"t3".RN > @skip AND "t3".RN <= 2

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

