SELECT "o"."Id", "o"."Number", "t"."OrderId", "t"."ProductId", "t"."Qty", "t"."Id", "t"."Name"
FROM "Orders" AS "o"
LEFT JOIN (
    SELECT "m"."OrderId", "m"."ProductId", "m"."Qty", "p"."Id", "p"."Name"
    FROM "MmOrderProduct" AS "m"
    INNER JOIN "Products" AS "p" ON "m"."ProductId" = "p"."Id"
) AS "t" ON "o"."Id" = "t"."OrderId"
ORDER BY "o"."Id", "t"."OrderId", "t"."ProductId"




-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[o].[Id],
	[o].[Name]
FROM
	[Orders] [m_1]
		INNER JOIN [MmOrderProduct] [d] ON [m_1].[Id] = [d].[OrderId]
		INNER JOIN [Products] [o] ON [o].[Id] = [d].[ProductId]
ORDER BY
	[m_1].[Id]





-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Number]
FROM
	[Orders] [t1]
ORDER BY
	[t1].[Id]



