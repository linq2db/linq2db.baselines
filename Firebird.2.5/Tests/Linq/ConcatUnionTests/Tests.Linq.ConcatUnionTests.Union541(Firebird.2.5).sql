-- Firebird.2.5 Firebird

SELECT
	"p"."ParentID",
	"p"."ParentID",
	"p"."Value1",
	NULL,
	NULL,
	NULL
FROM
	"Parent" "p"
UNION
SELECT
	Coalesce("t1"."Value1", 0),
	NULL,
	NULL,
	"t1"."ParentID",
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	(
		SELECT
			"p2"."Value1",
			(
				SELECT FIRST 1
					"a_Children"."ParentID"
				FROM
					"Child" "a_Children"
				WHERE
					"p2"."ParentID" = "a_Children"."ParentID"
				ORDER BY
					"a_Children"."ChildID" DESC
			) as "ParentID",
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

