-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[OwnerId],
	[a_Owner].[Id]
FROM
	[GenericOwnedEntity] [r]
		LEFT JOIN [GenericOwnerEntity] [a_Owner] ON [r].[OwnerId] = [a_Owner].[Id]
ORDER BY
	[r].[OwnerId]

