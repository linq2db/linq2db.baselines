SELECT o."Id"
FROM "Orders" AS o
WHERE EXISTS (
    SELECT 1
    FROM "MmOrderProduct" AS m
    INNER JOIN "Products" AS p ON m."ProductId" = p."Id"
    WHERE o."Id" = m."OrderId" AND p."Name" = 'Apple')
ORDER BY o."Id"


-- PostgreSQL.15 PostgreSQL

SELECT
	o."Id"
FROM
	"Orders" o
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"MmOrderProduct" p
				INNER JOIN "Products" o_1 ON o_1."Id" = p."ProductId"
		WHERE
			o."Id" = p."OrderId" AND o_1."Name" = 'Apple'
	)
ORDER BY
	o."Id"



