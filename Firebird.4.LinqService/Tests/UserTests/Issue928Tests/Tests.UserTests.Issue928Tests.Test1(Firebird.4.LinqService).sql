BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p1"."ParentID",
	"p1"."Value1",
	"p2"."ParentID",
	"p2"."Sum_1"
FROM
	"Parent" "p1"
		LEFT JOIN (
			SELECT
				"g_1"."ParentID",
				SUM("g_1"."ParentID") as "Sum_1"
			FROM
				"Parent" "g_1"
			WHERE
				EXISTS(
					SELECT
						*
					FROM
						"Child" "ch"
					WHERE
						"g_1"."ParentID" = "ch"."ParentID"
				)
			GROUP BY
				"g_1"."ParentID"
		) "p2" ON "p2"."ParentID" = "p1"."ParentID"

