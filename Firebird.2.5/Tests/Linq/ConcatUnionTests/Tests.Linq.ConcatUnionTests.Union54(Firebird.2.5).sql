BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p1"."ParentID",
	"p1"."ParentID",
	"p1"."Value1",
	NULL,
	NULL,
	NULL
FROM
	"Parent" "p1"
UNION
SELECT
	"t1"."ParentID",
	NULL,
	NULL,
	"t1"."cond",
	"t1"."cond",
	"t1"."ChildID"
FROM
	(
		SELECT
			Coalesce("p2"."Value1", 0) as "ParentID",
			(
				SELECT FIRST 1
					"a_Children"."ParentID"
				FROM
					"Child" "a_Children"
				WHERE
					"p2"."ParentID" = "a_Children"."ParentID"
				ORDER BY
					"a_Children"."ChildID" DESC
			) as "cond",
			(
				SELECT FIRST 1
					"a_Children_1"."ChildID"
				FROM
					"Child" "a_Children_1"
				WHERE
					"p2"."ParentID" = "a_Children_1"."ParentID"
				ORDER BY
					"a_Children_1"."ChildID" DESC
			) as "ChildID"
		FROM
			"Parent" "p2"
	) "t1"

