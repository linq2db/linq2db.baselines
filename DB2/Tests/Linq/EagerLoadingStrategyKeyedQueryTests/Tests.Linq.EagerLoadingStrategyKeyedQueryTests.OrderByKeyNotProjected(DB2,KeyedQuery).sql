-- DB2 DB2.LUW DB2LUW
SELECT
	"i"."Value",
	"i"."Id"
FROM
	"EagerOrderItem" "i"
ORDER BY
	"i"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"l"."ItemId",
	"l"."Log"
FROM
	"EagerOrderItemLog" "l"
WHERE
	"l"."ItemId" IN (1, 2)
ORDER BY
	"l"."Id"

