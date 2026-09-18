-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	i."Value",
	i."Id"
FROM
	"Item" i
ORDER BY
	i."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	l."ItemId",
	l."Id",
	l."Log"
FROM
	"ItemLog" l
WHERE
	l."ItemId" IN (1, 2)
ORDER BY
	l."Id" DESC

