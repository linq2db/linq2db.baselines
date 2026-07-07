-- PostgreSQL.18 PostgreSQL13

SELECT
	g_1."Id",
	SUM(Coalesce("a_Values"."Value"::Int, 0))
FROM
	"Item" g_1
		LEFT JOIN "ItemValue" "a_Values" ON g_1."Id" = "a_Values"."ItemId" AND "a_Values"."ValueName" = 'Value1'
GROUP BY
	g_1."Id"

-- PostgreSQL.18
-- Batch 1
SELECT
	m_1."Id",
	d."Id",
	d."ItemId",
	d."ValueName",
	d."Value"
FROM
	"Item" m_1
		INNER JOIN "ItemValue" d ON m_1."Id" = d."ItemId"

-- Batch 2
SELECT
	t1."Id",
	t1."Name"
FROM
	"Item" t1
