-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	CAST("t1"."Value_1" IS NULL OR CHAR_LENGTH("t1"."Value_1") = 0 AS smallint)
FROM
	(
		SELECT
			"t"."Id",
			"t"."Value" as "Value_1"
		FROM
			"StringTable" "t"
		WHERE
			"t"."Id" <= 2
		UNION ALL
		SELECT
			"t_1"."Id",
			"t_1"."Value" as "Value_1"
		FROM
			"StringTable" "t_1"
		WHERE
			"t_1"."Id" > 2
	) "t1"
ORDER BY
	"t1"."Id"

