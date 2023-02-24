BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip Integer(4) -- Int32
SET     @skip = 2
DECLARE @take_1 Integer(4) -- Int32
SET     @take_1 = 7

SELECT
	"t2"."ParentID",
	"t2"."ChildID"
FROM
	(
		SELECT
			"t1"."ParentID",
			"t1"."ChildID",
			ROW_NUMBER() OVER () as RN
		FROM
			"Child" "t1"
	) "t2"
WHERE
	"t2".RN > @skip AND "t2".RN <= @take_1

