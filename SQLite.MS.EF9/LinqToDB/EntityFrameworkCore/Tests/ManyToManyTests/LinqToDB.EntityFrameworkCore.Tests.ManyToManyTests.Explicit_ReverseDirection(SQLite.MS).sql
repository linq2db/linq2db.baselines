SELECT "p"."Id"
FROM "Products" AS "p"
WHERE EXISTS (
    SELECT 1
    FROM "MmOrderProduct" AS "m"
    INNER JOIN "Orders" AS "o" ON "m"."OrderId" = "o"."Id"
    WHERE "p"."Id" = "m"."ProductId" AND "o"."Number" = 'O-2')
ORDER BY "p"."Id"


-- SQLite.MS SQLite

SELECT
	[p].[Id]
FROM
	[Products] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[MmOrderProduct] [o_1]
				INNER JOIN [Orders] [o] ON [o].[Id] = [o_1].[OrderId]
		WHERE
			[p].[Id] = [o_1].[ProductId] AND [o].[Number] = 'O-2'
	)
ORDER BY
	[p].[Id]



