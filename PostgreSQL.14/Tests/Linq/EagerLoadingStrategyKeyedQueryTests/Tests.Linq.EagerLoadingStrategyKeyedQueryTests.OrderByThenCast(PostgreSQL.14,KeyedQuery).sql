-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	i."Value",
	i."Id"
FROM
	"EagerOrderItem" i
ORDER BY
	i."Id"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	k_1.item,
	d."Id",
	d."ItemId",
	d."Log"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "EagerOrderItemLog" d ON k_1.item = d."ItemId"
ORDER BY
	d."Id" DESC

