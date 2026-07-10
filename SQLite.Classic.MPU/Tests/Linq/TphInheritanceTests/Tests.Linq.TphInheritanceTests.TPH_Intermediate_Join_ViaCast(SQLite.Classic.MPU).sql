-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[x].[Type],
	[p].[FullName]
FROM
	[TphThingBase] [x]
		INNER JOIN [TphThingInteraction] [i] ON [x].[Id] = [i].[ThingId]
		INNER JOIN [TphThingPerson] [p] ON [i].[PersonId] = [p].[Id]
WHERE
	[x].[Type] = 101 OR [x].[Type] = 102
ORDER BY
	[x].[Id]

