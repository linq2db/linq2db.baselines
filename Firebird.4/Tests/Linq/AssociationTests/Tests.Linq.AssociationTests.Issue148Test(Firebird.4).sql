-- Firebird.4 Firebird4

SELECT
	"m_1"."Item1",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"n"."ParentID" as "Item1"
		FROM
			"Parent" "n"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."Item1" = "d"."ParentID"

-- Firebird.4 Firebird4

SELECT
	"m_1"."Item1",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"n"."ParentID" as "Item1"
		FROM
			"Parent" "n"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."Item1" = "d"."ParentID"

-- Firebird.4 Firebird4

SELECT
	"m_1"."Item1",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"n"."ParentID" as "Item1"
		FROM
			"Parent" "n"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."Item1" = "d"."ParentID"

-- Firebird.4 Firebird4

SELECT
	"n"."ParentID"
FROM
	"Parent" "n"

