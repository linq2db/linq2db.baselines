BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1"."Key_1",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"g_1"."ParentID" as "Key_1"
		FROM
			"Child" "g_1"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."Key_1" = "d"."ParentID"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"g_1"."ParentID"
FROM
	"Child" "g_1"
GROUP BY
	"g_1"."ParentID"

