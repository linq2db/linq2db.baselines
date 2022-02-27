BeforeExecute
-- Firebird3 Firebird

SELECT
	"child_1"."ChildID",
	"child_1"."ParentID",
	"child_1"."CountChildren2",
	"child_1"."c1",
	"child_1"."c2",
	"child_1"."AllChildrenMin",
	"child_1"."AllChildrenMax"
FROM
	(
		SELECT
			"c_1"."ParentID",
			"c_1"."ChildID",
			(
				SELECT
					Count(*)
				FROM
					"Child" "c2"
				WHERE
					"c2"."ParentID" = "c_1"."ParentID"
			) as "CountChildren2",
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						"Child" "c2_1"
					WHERE
						"c2_1"."ParentID" = "c_1"."ParentID"
				)
					THEN 1
				ELSE 0
			END as "c1",
			CASE
				WHEN (NOT EXISTS(
					SELECT
						*
					FROM
						"Child" "c2_2"
					WHERE
						"c2_2"."ParentID" <> "c_1"."ParentID"
				))
					THEN 1
				ELSE 0
			END as "c2",
			(
				SELECT
					Min("c2_3"."ChildID")
				FROM
					"Child" "c2_3"
				WHERE
					"c2_3"."ParentID" = "c_1"."ParentID"
			) as "AllChildrenMin",
			(
				SELECT
					Max("c2_4"."ChildID")
				FROM
					"Child" "c2_4"
				WHERE
					"c2_4"."ParentID" = "c_1"."ParentID"
			) as "AllChildrenMax"
		FROM
			"Child" "c_1"
	) "child_1"
		INNER JOIN "Parent" "parent_1" ON "child_1"."ParentID" = "parent_1"."ParentID"
WHERE
	"parent_1"."Value1" < 7

