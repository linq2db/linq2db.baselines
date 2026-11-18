-- Firebird.3 Firebird3
SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID",
	"p"."ParentID",
	"p"."Value1"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			"Parent" "t1"
	) "m_1"
		INNER JOIN "Child" "d" ON "d"."ParentID" = "m_1"."ParentID"
		LEFT JOIN (
			SELECT
				"g_1"."ParentID",
				ROW_NUMBER() OVER (PARTITION BY "g_1"."ChildID" ORDER BY "g_1"."ChildID") as "rn",
				"g_1"."ChildID"
			FROM
				"GrandChild" "g_1"
		) "a_LinkedParent"
			INNER JOIN "Parent" "p" ON "a_LinkedParent"."ParentID" = "p"."ParentID"
		ON "a_LinkedParent"."ChildID" = "d"."ChildID" AND "a_LinkedParent"."rn" = 1
ORDER BY
	"d"."ChildID"

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

