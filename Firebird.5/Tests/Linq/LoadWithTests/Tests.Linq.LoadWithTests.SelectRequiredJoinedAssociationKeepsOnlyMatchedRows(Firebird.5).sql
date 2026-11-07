-- Firebird.5 Firebird4
SELECT
	"c_1"."ChildID",
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Child" "c_1"
		CROSS JOIN LATERAL (
			SELECT
				"p"."ParentID",
				"p"."Value1"
			FROM
				(
					SELECT
						"g_1"."ParentID"
					FROM
						"GrandChild" "g_1"
					WHERE
						"g_1"."ChildID" = "c_1"."ChildID"
					FETCH NEXT 1 ROWS ONLY
				) "a_LinkedParentRequired"
					INNER JOIN "Parent" "p" ON "a_LinkedParentRequired"."ParentID" = "p"."ParentID"
		) "t1"

