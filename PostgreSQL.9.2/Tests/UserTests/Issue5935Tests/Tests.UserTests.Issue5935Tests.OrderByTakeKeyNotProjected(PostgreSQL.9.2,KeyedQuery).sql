-- PostgreSQL.9.2 PostgreSQL
SELECT
	i."Value",
	i."Id"
FROM
	"Item" i
ORDER BY
	i."Id"

-- PostgreSQL.9.2 PostgreSQL
SELECT
	k_1.item,
	d_1."Log"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN (
			SELECT
				d."Log",
				ROW_NUMBER() OVER (PARTITION BY d."ItemId" ORDER BY d."Id") as rn,
				d."ItemId",
				d."Id"
			FROM
				"ItemLog" d
		) d_1 ON k_1.item = d_1."ItemId" AND d_1.rn <= 2
ORDER BY
	d_1."Id"

