-- Oracle.11.Managed Oracle11
SELECT
	i."Value",
	i."Id"
FROM
	"Item" i
ORDER BY
	i."Id"

-- Oracle.11.Managed Oracle11
SELECT
	l."ItemId",
	l."Log"
FROM
	"ItemLog" l
WHERE
	l."ItemId" IN (1, 2)
ORDER BY
	l."ItemId",
	l."Id" DESC

