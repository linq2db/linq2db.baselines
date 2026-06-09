SELECT o."Id", o."Number", s."OrderId", s."ProductId", s."Qty", s."Id", s."Name"
FROM "Orders" AS o
LEFT JOIN (
    SELECT m."OrderId", m."ProductId", m."Qty", p."Id", p."Name"
    FROM "MmOrderProduct" AS m
    INNER JOIN "Products" AS p ON m."ProductId" = p."Id"
) AS s ON o."Id" = s."OrderId"
ORDER BY o."Id", s."OrderId", s."ProductId"




-- PostgreSQL.15 PostgreSQL

SELECT
	m_1."Id",
	o."Id",
	o."Name"
FROM
	"Orders" m_1
		INNER JOIN "MmOrderProduct" d ON m_1."Id" = d."OrderId"
		INNER JOIN "Products" o ON o."Id" = d."ProductId"
ORDER BY
	m_1."Id"





-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Number"
FROM
	"Orders" t1
ORDER BY
	t1."Id"



