-- SQLite.MS SQLite

SELECT
	[b].[Type],
	[p].[FullName]
FROM
	[TphThingBase] [b]
		INNER JOIN [TphThingInteraction] [i] ON [b].[Id] = [i].[ThingId]
		INNER JOIN [TphThingPerson] [p] ON [i].[PersonId] = [p].[Id]
ORDER BY
	[b].[Id]

