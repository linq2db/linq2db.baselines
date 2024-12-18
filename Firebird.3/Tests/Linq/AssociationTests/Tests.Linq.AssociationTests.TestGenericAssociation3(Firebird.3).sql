BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."ParentID",
	"t"."Value1"
FROM
	"Parent" "t"
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			"GrandChild" "a_GrandChildrenX"
		WHERE
			"t"."ParentID" = "a_GrandChildrenX"."ParentID" AND
			"a_GrandChildrenX"."ParentID" IS NOT NULL AND
			"a_GrandChildrenX"."ChildID" > 22 AND
			"a_GrandChildrenX"."ChildID" IS NOT NULL
	) > 1
ORDER BY
	"t"."ParentID"

