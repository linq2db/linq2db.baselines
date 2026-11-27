-- PostgreSQL.9.2 PostgreSQL
SELECT
	i."Value",
	i."Id"
FROM
	"EagerOrderItem" i
ORDER BY
	i."Id"

-- PostgreSQL.9.2 PostgreSQL
SELECT
	l."ItemId",
	l."Log"
FROM
	"EagerOrderItemLog" l
WHERE
	l."ItemId" IN (1, 2)
ORDER BY
	l."Id" DESC

