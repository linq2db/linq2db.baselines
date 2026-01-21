-- Firebird.2.5 Firebird

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"a_Parent"."ParentID"
		FROM
			"Child" "c_1"
				LEFT JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."ParentID"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

-- Firebird.2.5 Firebird

SELECT
	"r_1"."ParentID",
	"r_1"."ChildID",
	"r_1"."ParentID_1",
	"r_1"."Value1",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"r_1"."ParentID_1" = "a_Children"."ParentID"
	)
FROM
	(
		SELECT DISTINCT
			"r"."ParentID",
			"r"."ChildID",
			"a_Parent"."ParentID" as "ParentID_1",
			"a_Parent"."Value1"
		FROM
			"Child" "r"
				LEFT JOIN "Parent" "a_Parent" ON "r"."ParentID" = "a_Parent"."ParentID"
	) "r_1"
ORDER BY
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "a_Children"
		WHERE
			"r_1"."ParentID_1" = "a_Children"."ParentID"
	)

-- Firebird.2.5 Firebird

SELECT
	"m_1"."cond",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"a_Parent"."ParentID" as "cond"
		FROM
			"Child" "t1"
				LEFT JOIN "Parent" "a_Parent" ON "t1"."ParentID" = "a_Parent"."ParentID"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."cond" = "d"."ParentID"

-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID",
	"t1"."ChildID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	"Child" "t1"
		LEFT JOIN "Parent" "a_Parent" ON "t1"."ParentID" = "a_Parent"."ParentID"

