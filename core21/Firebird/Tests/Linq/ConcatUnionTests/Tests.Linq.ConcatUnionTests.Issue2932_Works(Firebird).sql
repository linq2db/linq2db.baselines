BeforeExecute
-- Firebird

SELECT
	"t2"."ChildID",
	"t2"."Sub"
FROM
	(
		SELECT
			"p"."ChildID",
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						"GrandChild" "t1"
					WHERE
						"p"."ParentID" = "t1"."ParentID" AND "p"."ChildID" = "t1"."ChildID"
				)
					THEN 1
				ELSE 0
			END as "Sub"
		FROM
			"Child" "p"
	) "t2"
UNION ALL
SELECT
	"t4"."ChildID",
	"t4"."Sub"
FROM
	(
		SELECT
			"p_1"."ChildID",
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						"GrandChild" "t3"
					WHERE
						"p_1"."ParentID" = "t3"."ParentID" AND "p_1"."ChildID" = "t3"."ChildID"
				)
					THEN 1
				ELSE 0
			END as "Sub"
		FROM
			"Child" "p_1"
	) "t4"

