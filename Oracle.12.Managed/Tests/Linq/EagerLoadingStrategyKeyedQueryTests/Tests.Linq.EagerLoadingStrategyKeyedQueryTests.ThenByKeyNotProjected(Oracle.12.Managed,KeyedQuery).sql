-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	i."Value",
	i."Id"
FROM
	"EagerOrderItem" i
ORDER BY
	i."Id"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	l."ItemId",
	l."Log"
FROM
	"EagerOrderItemLog" l
WHERE
	l."ItemId" IN (1, 2)
ORDER BY
	l."ItemId",
	l."Id" DESC

