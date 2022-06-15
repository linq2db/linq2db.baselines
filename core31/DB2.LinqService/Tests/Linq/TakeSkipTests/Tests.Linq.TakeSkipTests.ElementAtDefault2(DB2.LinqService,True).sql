BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 300000
DECLARE @skip_1 Integer(4) -- Int32
SET     @skip_1 = 300001

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	(
		SELECT
			"p"."ParentID",
			"p"."Value1",
			ROW_NUMBER() OVER () as RN
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" > 1
	) "t1"
WHERE
	"t1".RN > @skip AND "t1".RN <= @skip_1

