-- SapHana.Odbc SapHanaOdbc

SELECT
	STRING_AGG('test:' || CAST("grp_1"."ch" AS VarChar(11)), ';')
FROM
	(
		SELECT
			MOD("ch"."item", 10) as "Key_1",
			"ch"."item" as "ch"
		FROM
			"Parent" "grp"
				CROSS JOIN (
					SELECT 11 AS "item" FROM DUMMY
					UNION ALL
					SELECT 13 FROM DUMMY) "ch"
		ORDER BY
			"grp"."ParentID"
	) "grp_1"
GROUP BY
	"grp_1"."Key_1"

