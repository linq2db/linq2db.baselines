-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[b].[Type],
	[p].[FullName]
FROM
	[TphThingBase] [b]
		INNER JOIN [TphThingInteraction] [i] ON [b].[Id] = [i].[ThingId]
		INNER JOIN [TphThingPerson] [p] ON [i].[PersonId] = [p].[Id]
WHERE
	[b].[Type] IN (102, 101)
ORDER BY
	[b].[Id]

