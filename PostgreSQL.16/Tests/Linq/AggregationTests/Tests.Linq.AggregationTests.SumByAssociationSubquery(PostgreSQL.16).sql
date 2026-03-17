-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	g_1."Id",
	SUM(Coalesce("a_Values"."Value"::Int, 0))
FROM
	"Item" g_1
		LEFT JOIN "ItemValue" "a_Values" ON g_1."Id" = "a_Values"."ItemId" AND "a_Values"."ValueName" = 'Value1'
GROUP BY
	g_1."Id"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	d."Id",
	d."ItemId",
	d."ValueName",
	d."Value"
FROM
	"Item" m_1
		INNER JOIN "ItemValue" d ON m_1."Id" = d."ItemId"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"Item" t1

