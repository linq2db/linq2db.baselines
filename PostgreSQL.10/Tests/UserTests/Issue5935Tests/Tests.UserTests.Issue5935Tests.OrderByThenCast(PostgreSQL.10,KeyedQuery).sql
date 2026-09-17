-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	i."Value",
	i."Id"
FROM
	"Item" i
ORDER BY
	i."Id"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	k_1.item,
	d."Id",
	d."ItemId",
	d."Log"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN "ItemLog" d ON k_1.item = d."ItemId"
ORDER BY
	d."Id"

