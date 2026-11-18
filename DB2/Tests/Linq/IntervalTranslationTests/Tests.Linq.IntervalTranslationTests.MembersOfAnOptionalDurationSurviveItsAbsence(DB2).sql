-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id",
	CAST(Mod("r"."Grace" / 60, 60) AS Int),
	CAST("r"."Grace" AS Float) / 60,
	CAST("r"."Required" AS Float) / 60
FROM
	"OptionalDurationRow" "r"
ORDER BY
	"r"."Id"

