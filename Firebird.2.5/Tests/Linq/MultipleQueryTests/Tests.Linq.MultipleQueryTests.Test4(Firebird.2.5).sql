-- Firebird.2.5 Firebird

SELECT
	"m_1"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"p"."ParentID"
		FROM
			"Parent" "p"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

-- Firebird.2.5 Firebird

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
ORDER BY
	"p"."ParentID"

