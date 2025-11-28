-- DB2 DB2.LUW DB2LUW

SELECT
	LISTAGG('test:' || RTrim(Char("grp_1"."ch")), ';')
FROM
	(
		SELECT
			Mod("ch"."item", 10) as "Key_1",
			"ch"."item" as "ch"
		FROM
			"Parent" "grp",
			(VALUES
				(11), (13)
			) "ch"("item")
		ORDER BY
			"grp"."ParentID"
	) "grp_1"
GROUP BY
	"grp_1"."Key_1"

