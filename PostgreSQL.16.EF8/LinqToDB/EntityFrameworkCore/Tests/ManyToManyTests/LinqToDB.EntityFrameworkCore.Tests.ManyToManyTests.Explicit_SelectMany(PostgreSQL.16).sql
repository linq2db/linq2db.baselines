SELECT t."Id"
FROM "Orders" AS o
INNER JOIN (
    SELECT p."Id", m."OrderId"
    FROM "MmOrderProduct" AS m
    INNER JOIN "Products" AS p ON m."ProductId" = p."Id"
) AS t ON o."Id" = t."OrderId"


-- PostgreSQL.15 PostgreSQL

SELECT
	o."Id"
FROM
	"Orders" p
		INNER JOIN "MmOrderProduct" j ON p."Id" = j."OrderId"
		INNER JOIN "Products" o ON o."Id" = j."ProductId"



