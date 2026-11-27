-- PostgreSQL.18 PostgreSQL12
SELECT
	i."Value",
	i."Id"
FROM
	"EagerOrderItem" i
ORDER BY
	i."Id"

-- PostgreSQL.18 PostgreSQL12
SELECT
	l."ItemId",
	l."Log"
FROM
	"EagerOrderItemLog" l
WHERE
	l."ItemId" IN (1, 2)
ORDER BY
	l."Id"

