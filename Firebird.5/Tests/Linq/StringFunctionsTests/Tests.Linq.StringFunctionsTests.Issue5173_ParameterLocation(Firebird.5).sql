-- Firebird.5 Firebird4

SELECT
	LIST('test:' || CAST("grp_1"."ch" AS VarChar(11) CHARACTER SET UNICODE_FSS), ';')
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
		ORDER BY
			"grp"."ParentID"
	) "grp_1"
GROUP BY
	"grp_1"."Key_1"

