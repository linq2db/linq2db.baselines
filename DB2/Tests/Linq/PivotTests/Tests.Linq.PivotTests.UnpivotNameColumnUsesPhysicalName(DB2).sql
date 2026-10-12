-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Name",
	"t1"."Value_1"
FROM
	(
		SELECT
			VarChar('Q_ONE', 255) as "Name",
			"row_1"."Id",
			"row_1".Q_ONE as "Value_1"
		FROM
			"AliasedQuarterly" "row_1"
		WHERE
			"row_1".Q_ONE IS NOT NULL
		UNION ALL
		SELECT
			VarChar('Q_TWO', 255) as "Name",
			"row_2"."Id",
			"row_2".Q_TWO as "Value_1"
		FROM
			"AliasedQuarterly" "row_2"
		WHERE
			"row_2".Q_TWO IS NOT NULL
	) "t1"
ORDER BY
	"t1"."Name"

