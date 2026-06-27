-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[Type],
	[x].[Id],
	[x].[BaseField],
	[x].[ConcreteField],
	[x].[IntermediateField],
	[x].[ConcreteField]
FROM
	[TphThingBase] [x]
WHERE
	[x].[Type] = 101 OR [x].[Type] = 102
ORDER BY
	[x].[Id]

