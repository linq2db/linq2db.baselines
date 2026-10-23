-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	m_1."Id",
	d_1."Log"
FROM
	"Item" m_1
		CROSS APPLY (
			SELECT
				d."Log"
			FROM
				"ItemLog" d
			WHERE
				m_1."Id" = d."ItemId"
			ORDER BY
				d."Id"
			FETCH NEXT 2 ROWS ONLY
		) d_1
ORDER BY
	m_1."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	i."Value",
	i."Id"
FROM
	"Item" i
ORDER BY
	i."Id"

