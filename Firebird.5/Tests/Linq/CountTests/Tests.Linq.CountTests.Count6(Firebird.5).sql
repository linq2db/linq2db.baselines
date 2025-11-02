-- Firebird.5 Firebird4

SELECT
	COUNT(*)
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

