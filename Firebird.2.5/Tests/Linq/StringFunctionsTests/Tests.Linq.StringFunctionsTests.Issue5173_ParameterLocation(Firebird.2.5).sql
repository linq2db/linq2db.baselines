-- Firebird.2.5 Firebird

SELECT
	LIST('test:' || "grp_1"."ch", ';')
FROM
	(
		SELECT
			Mod("ch"."item", 10) as "Key_1",
			"ch"."item" as "ch"
		FROM
			"Parent" "grp"
				CROSS JOIN (
					SELECT 11 AS "item" FROM rdb$database
					UNION ALL
					SELECT 13 FROM rdb$database) "ch"
	) "grp_1"
GROUP BY
	"grp_1"."Key_1"

