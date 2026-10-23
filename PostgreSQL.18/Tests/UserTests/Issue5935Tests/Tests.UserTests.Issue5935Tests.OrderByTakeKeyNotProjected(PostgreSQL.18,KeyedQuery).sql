-- PostgreSQL.18 PostgreSQL12
SELECT
	i."Value",
	i."Id"
FROM
	"Item" i
ORDER BY
	i."Id"

-- PostgreSQL.18 PostgreSQL12
SELECT
	k_1.item,
	d_1."Log"
FROM
	(VALUES
		(1), (2)
	) k_1(item)
		INNER JOIN LATERAL (
			SELECT
				d."Log"
			FROM
				"ItemLog" d
			WHERE
				k_1.item = d."ItemId"
			ORDER BY
				d."Id"
			LIMIT 2
		) d_1 ON 1=1

