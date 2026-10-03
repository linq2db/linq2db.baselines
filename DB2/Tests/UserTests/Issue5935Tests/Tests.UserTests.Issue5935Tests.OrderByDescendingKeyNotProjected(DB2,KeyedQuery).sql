-- DB2 DB2.LUW DB2LUW
SELECT
	"i"."Value",
	"i"."Id"
FROM
	"Item" "i"
ORDER BY
	"i"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"l"."ItemId",
	"l"."Log"
FROM
	"ItemLog" "l"
WHERE
	"l"."ItemId" IN (1, 2)
ORDER BY
	"l"."Id" DESC

