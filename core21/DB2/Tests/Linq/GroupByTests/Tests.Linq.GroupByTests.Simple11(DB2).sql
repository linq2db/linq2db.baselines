BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."c1",
	"t1"."ChildID"
FROM
	(
		SELECT
			"selectParam"."ParentID" + 1 as "c1",
			"selectParam"."ChildID"
		FROM
			"GrandChild" "selectParam"
	) "t1"
GROUP BY
	"t1"."c1",
	"t1"."ChildID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 2
DECLARE @ChildID Integer(4) -- Int32
SET     @ChildID = 11

SELECT
	"elemParam"."ChildID"
FROM
	"GrandChild" "elemParam"
WHERE
	("elemParam"."ParentID" + 1 = @ParentID AND "elemParam"."ChildID" = @ChildID)

