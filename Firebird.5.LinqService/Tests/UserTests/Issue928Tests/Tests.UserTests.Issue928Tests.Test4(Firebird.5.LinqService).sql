﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."ParentID",
	"t1".SUM_1,
	"p2"."ParentID",
	"p2"."Sum_1"
FROM
	(
		SELECT
			"g_1"."ParentID",
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
	) "t1"
		LEFT JOIN (
			SELECT
				"g_2"."ParentID",
				SUM("g_2"."ParentID") as "Sum_1"
			FROM
				"Parent" "g_2"
			WHERE
				EXISTS(
					SELECT
						*
					FROM
						"Child" "ch_1"
					WHERE
						"g_2"."ParentID" = "ch_1"."ParentID"
				)
			GROUP BY
				"g_2"."ParentID"
		) "p2" ON "t1"."ParentID" = "p2"."ParentID"

