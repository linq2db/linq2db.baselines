-- PostgreSQL.19 PostgreSQL12
SELECT
	m_1."Id",
	d_1."Id",
	d_1."ItemId",
	d_1."Log"
FROM
	"EagerOrderItem" m_1
		INNER JOIN LATERAL (
			SELECT
				d."Id",
				d."ItemId",
				d."Log"
			FROM
				"EagerOrderItemLog" d
			WHERE
				m_1."Id" = d."ItemId"
			ORDER BY
				d."Id" DESC
			LIMIT 2
		) d_1 ON 1=1
ORDER BY
	m_1."Id"

-- PostgreSQL.19 PostgreSQL12
SELECT
	i."Value",
	i."Id"
FROM
	"EagerOrderItem" i
ORDER BY
	i."Id"

