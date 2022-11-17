BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip_2 Integer(4) -- Int32
SET     @skip_2 = 3
DECLARE @skip_3 Integer(4) -- Int32
SET     @skip_3 = 8

SELECT
	"t2"."ParentID",
	"t2"."ChildID"
FROM
	(
		SELECT
			"t1"."ParentID",
			"t1"."ChildID",
			ROW_NUMBER() OVER (ORDER BY "t1"."ChildID") as RN
		FROM
			"Child" "t1"
	) "t2"
WHERE
	"t2".RN > @skip_2 AND "t2".RN <= @skip_3

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @skip_2 Integer(4) -- Int32
SET     @skip_2 = 3
DECLARE @skip_3 Integer(4) -- Int32
SET     @skip_3 = 8

SELECT
	"t2"."ParentID",
	"t2"."ChildID"
FROM
	(
		SELECT
			"t1"."ParentID",
			"t1"."ChildID",
			ROW_NUMBER() OVER (ORDER BY "t1"."ChildID") as RN
		FROM
			"Child" "t1"
	) "t2"
WHERE
	"t2".RN > @skip_2 AND "t2".RN <= @skip_3

