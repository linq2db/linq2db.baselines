SELECT "p"."Id", "p"."Name", "t"."FriendId", "t"."PersonId", "t"."Id", "t"."Name"
FROM "People" AS "p"
LEFT JOIN (
    SELECT "m"."FriendId", "m"."PersonId", "p0"."Id", "p0"."Name"
    FROM "MmFriendship" AS "m"
    INNER JOIN "People" AS "p0" ON "m"."FriendId" = "p0"."Id"
) AS "t" ON "p"."Id" = "t"."PersonId"
ORDER BY "p"."Id", "t"."FriendId", "t"."PersonId"




-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[o].[Id],
	[o].[Name]
FROM
	[People] [m_1]
		INNER JOIN [MmFriendship] [d] ON [m_1].[Id] = [d].[PersonId]
		INNER JOIN [People] [o] ON [o].[Id] = [d].[FriendId]
ORDER BY
	[m_1].[Id]





-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	[People] [t1]
ORDER BY
	[t1].[Id]



