BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	d."Value"
FROM
	"Item" m_1
		INNER JOIN "ItemValue" d ON m_1."Id" = d."ItemId"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Text"
FROM
	"Item" x

