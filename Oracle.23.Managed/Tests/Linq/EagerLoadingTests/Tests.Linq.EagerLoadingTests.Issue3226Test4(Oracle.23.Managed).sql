-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	d."Value"
FROM
	"Item" m_1
		INNER JOIN "ItemValue" d ON m_1."Id" = d."ItemId"

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Text"
FROM
	"Item" x
ORDER BY
	Coalesce((
		SELECT
			SUM(a_Values."Value")
		FROM
			"ItemValue" a_Values
		WHERE
			x."Id" = a_Values."ItemId"
	), 0)

