-- SQLite.MS SQLite

SELECT
	[x].[Id],
	[x].[IsActive],
	[x].[ParentId],
	[x].[Name]
FROM
	[Children] [x]
WHERE
	[x].[Name] LIKE '%Test%' ESCAPE '~'
ORDER BY
	[x].[Name]



SELECT "c"."Id", "c"."IsActive", "c"."Name", "c"."ParentId"
FROM "Children" AS "c"
WHERE "c"."Name" IS NOT NULL AND ("c"."Name" LIKE 'Test%')


