-- Firebird.5 Firebird4

SELECT
	"g_2"."Date_1",
	COUNT(*)
FROM
	(
		SELECT
			CAST("g_1"."CreatedOnUtc" AS Date) as "Date_1"
		FROM
			"Issue5390Table" "g_1"
	) "g_2"
GROUP BY
	"g_2"."Date_1"

-- Firebird.5 Firebird4

SELECT
	"t1"."CreatedOnUtc"
FROM
	"Issue5390Table" "t1"

