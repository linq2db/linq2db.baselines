BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"g_2"."Key_1"
FROM
	(
		SELECT
			CASE
				WHEN (
					SELECT
						AVG("a_Children"."ParentID")
					FROM
						"Child" "a_Children"
					WHERE
						"g_1"."ParentID" = "a_Children"."ParentID"
				) > 3
					THEN TRUE
				ELSE FALSE
			END as "Key_1"
		FROM
			"Parent" "g_1"
		WHERE
			(
				SELECT
					COUNT(*)
				FROM
					"Child" "a_Children_1"
				WHERE
					"g_1"."ParentID" = "a_Children_1"."ParentID"
			) > 0
	) "g_2"
GROUP BY
	"g_2"."Key_1"

