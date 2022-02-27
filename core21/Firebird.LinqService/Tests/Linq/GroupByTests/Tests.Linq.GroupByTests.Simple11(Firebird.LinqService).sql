BeforeExecute
-- Firebird

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
-- Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2
DECLARE @ChildID_1 Integer -- Int32
SET     @ChildID_1 = 11

SELECT
	"elemParam"."ChildID"
FROM
	"GrandChild" "elemParam"
WHERE
	("elemParam"."ParentID" + 1 = @ParentID AND "elemParam"."ChildID" = @ChildID_1)

