-- Firebird.5 Firebird4
SELECT
	"t1"."Key_1",
	"t1"."Sum_1",
	"p2"."Key_1",
	"p2"."Sum_1"
FROM
	(
		SELECT
			"p1"."ParentID" as "Key_1",
			SUM("p1"."ParentID") as "Sum_1"
		FROM
			"Parent" "p1"
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					"Child" "ch"
				WHERE
					"p1"."ParentID" = "ch"."ParentID"
			)
		GROUP BY
			"p1"."ParentID"
	) "t1"
		LEFT JOIN (
			SELECT
				"g_1"."ParentID" as "Key_1",
				SUM("g_1"."ParentID") as "Sum_1"
			FROM
				"Parent" "g_1"
			WHERE
				EXISTS(
					SELECT
						*
					FROM
						"Child" "ch_1"
					WHERE
						"g_1"."ParentID" = "ch_1"."ParentID"
				)
			GROUP BY
				"g_1"."ParentID"
		) "p2" ON "t1"."Key_1" = "p2"."Key_1"

