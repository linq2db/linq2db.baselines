-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	m_1."Id",
	d_1."Id",
	d_1."ItemId",
	d_1."Log"
FROM
	"EagerOrderItem" m_1
		CROSS APPLY (
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
			FETCH NEXT 2 ROWS ONLY
		) d_1
ORDER BY
	m_1."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	i."Value",
	i."Id"
FROM
	"EagerOrderItem" i
ORDER BY
	i."Id"

