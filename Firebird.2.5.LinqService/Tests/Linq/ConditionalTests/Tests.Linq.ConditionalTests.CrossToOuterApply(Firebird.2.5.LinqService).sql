BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p"."ParentID",
	(
		SELECT FIRST 1
			"a_Children"."ParentID"
		FROM
			"Child" "a_Children"
		WHERE
			"p"."ParentID" = "a_Children"."ParentID"
		ORDER BY
			"a_Children"."ChildID"
	),
	(
		SELECT FIRST 1
			"a_Children_1"."ChildID"
		FROM
			"Child" "a_Children_1"
		WHERE
			"p"."ParentID" = "a_Children_1"."ParentID"
		ORDER BY
			"a_Children_1"."ChildID"
	),
	(
		SELECT FIRST 1
			"a_Children_2"."ParentID"
		FROM
			"Child" "a_Children_2"
		WHERE
			"p"."ParentID" = "a_Children_2"."ParentID"
		ORDER BY
			"a_Children_2"."ChildID"
	),
	(
		SELECT FIRST 1
			"a_Children_3"."ChildID"
		FROM
			"Child" "a_Children_3"
		WHERE
			"p"."ParentID" = "a_Children_3"."ParentID"
		ORDER BY
			"a_Children_3"."ChildID"
	)
FROM
	"Parent" "p"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			"Parent" "t1"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

