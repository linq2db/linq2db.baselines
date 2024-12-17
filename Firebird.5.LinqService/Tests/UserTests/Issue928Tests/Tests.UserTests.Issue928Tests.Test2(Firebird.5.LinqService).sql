BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p1"."ParentID",
	"p1"."Value1",
	"p2"."Key_1",
	"p2".SUM_1
FROM
	"Parent" "p1"
		INNER JOIN (
			SELECT
				"g_1"."ParentID" as "Key_1",
				SUM("g_1"."ParentID") as SUM_1
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
		) "p2" ON "p2"."Key_1" = "p1"."ParentID"

