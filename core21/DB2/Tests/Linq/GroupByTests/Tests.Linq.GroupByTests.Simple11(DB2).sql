BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Key_1",
	"t1"."Key_2"
FROM
	(
		SELECT
			"selectParam"."ParentID" + 1 as "Key_1",
			"selectParam"."ChildID" as "Key_2"
		FROM
			"GrandChild" "selectParam"
	) "t1"
GROUP BY
	"t1"."Key_1",
	"t1"."Key_2"

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

