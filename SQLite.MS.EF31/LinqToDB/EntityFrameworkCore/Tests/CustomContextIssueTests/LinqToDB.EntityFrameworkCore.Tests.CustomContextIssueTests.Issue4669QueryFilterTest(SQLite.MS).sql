Parameters:
@p0='?', @p1='?', @p2='?' (Size = 7)

INSERT INTO "Items" ("Id", "IsDeleted", "Name")
VALUES (@p0, @p1, @p2);


Parameters:
@p0='?', @p1='?', @p2='?' (Size = 5)

INSERT INTO "Items" ("Id", "IsDeleted", "Name")
VALUES (@p0, @p1, @p2);


-- SQLite.MS SQLite
SELECT
	[p].[Id],
	[p].[Name]
FROM
	[Items] [p]
WHERE
	NOT [p].[IsDeleted] AND [p].[Name] LIKE '%Test%' ESCAPE '~'
ORDER BY
	[p].[Name]



SELECT "i"."Id", "i"."IsDeleted", "i"."Name"
FROM "Items" AS "i"
WHERE NOT ("i"."IsDeleted") AND ("i"."Name" IS NOT NULL AND ("i"."Name" LIKE 'Test%'))


