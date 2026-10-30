-- SapHana.Native SapHana
SELECT
	"i"."Value",
	"i"."Id"
FROM
	"Item" "i"
ORDER BY
	"i"."Id"

-- SapHana.Native SapHana
SELECT
	"l"."ItemId",
	"l"."Log"
FROM
	"ItemLog" "l"
WHERE
	"l"."ItemId" IN (1, 2)
ORDER BY
	"l"."Id" DESC

