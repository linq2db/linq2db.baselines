-- SapHana.Native SapHana
SELECT
	"i"."Value",
	"i"."Id"
FROM
	"EagerOrderItem" "i"
ORDER BY
	"i"."Id"

-- SapHana.Native SapHana
SELECT
	"l"."ItemId",
	"l"."Log"
FROM
	"EagerOrderItemLog" "l"
WHERE
	"l"."ItemId" IN (1, 2)
ORDER BY
	"l"."Id" DESC

