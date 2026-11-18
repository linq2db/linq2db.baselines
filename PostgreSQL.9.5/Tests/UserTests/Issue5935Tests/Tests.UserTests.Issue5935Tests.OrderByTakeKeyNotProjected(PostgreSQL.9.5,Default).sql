-- PostgreSQL.9.5 PostgreSQL
SELECT
	m_1."Id",
	d_1."Log"
FROM
	"Item" m_1
		INNER JOIN LATERAL (
			SELECT
				d."Log"
			FROM
				"ItemLog" d
			WHERE
				m_1."Id" = d."ItemId"
			ORDER BY
				d."Id"
			LIMIT 2
		) d_1 ON 1=1
ORDER BY
	m_1."Id"

-- PostgreSQL.9.5 PostgreSQL
SELECT
	i."Value",
	i."Id"
FROM
	"Item" i
ORDER BY
	i."Id"

