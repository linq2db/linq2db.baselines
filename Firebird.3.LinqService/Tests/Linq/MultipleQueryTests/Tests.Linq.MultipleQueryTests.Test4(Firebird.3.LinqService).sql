BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

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

BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"
ORDER BY
	"p"."ParentID"

