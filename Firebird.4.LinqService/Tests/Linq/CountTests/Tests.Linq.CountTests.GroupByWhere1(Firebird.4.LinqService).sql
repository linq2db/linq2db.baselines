BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"g_2"."ParentID"
FROM
	(
		SELECT
			"g_1"."ParentID"
		FROM
			"Child" "g_1"
		GROUP BY
			"g_1"."ParentID"
	) "g_2"
WHERE
	"g_2"."ParentID" > 2

