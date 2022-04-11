BeforeExecute
-- Firebird

SELECT
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

