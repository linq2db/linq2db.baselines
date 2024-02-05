BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"t2"."ParentID",
	"t2"."Value1"
FROM
	(
		SELECT
			"t1"."ParentID",
			"t1"."Value1",
			ROW_NUMBER() OVER (ORDER BY "t1"."ParentID") as RN
		FROM
			"Parent" "t1"
	) "t2"
WHERE
	"t2".RN > @skip AND "t2".RN <= @take

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @skip Integer(4) -- Int32
SET     @skip = 1
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT
	"t2"."ParentID",
	"t2"."Value1"
FROM
	(
		SELECT
			"t1"."ParentID",
			"t1"."Value1",
			ROW_NUMBER() OVER (ORDER BY "t1"."ParentID") as RN
		FROM
			"Parent" "t1"
	) "t2"
WHERE
	"t2".RN > @skip AND "t2".RN <= @take

