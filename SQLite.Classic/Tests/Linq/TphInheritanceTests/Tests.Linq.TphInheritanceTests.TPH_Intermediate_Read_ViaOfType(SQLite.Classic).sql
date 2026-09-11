-- SQLite.Classic SQLite
SELECT
	[t1].[Type],
	[t1].[Id],
	[t1].[BaseField],
	[t1].[IntermediateField],
	[t1].[ConcreteField]
FROM
	[TphThingBase] [t1]
WHERE
	[t1].[Type] IN (102, 101)
ORDER BY
	[t1].[Id]

