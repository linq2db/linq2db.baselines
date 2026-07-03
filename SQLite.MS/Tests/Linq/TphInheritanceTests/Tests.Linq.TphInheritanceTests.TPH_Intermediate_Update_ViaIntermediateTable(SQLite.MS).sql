-- SQLite.MS SQLite
DECLARE @IntermediateField  -- Int32
SET     @IntermediateField = 333

UPDATE
	[TphThingBase]
SET
	[IntermediateField] = @IntermediateField
WHERE
	[TphThingBase].[Type] IN (102, 101) AND [TphThingBase].[Id] = 3

-- SQLite.MS SQLite

SELECT
	[x].[Type],
	[x].[Id],
	[x].[BaseField],
	[x].[ConcreteField],
	[x].[IntermediateField]
FROM
	[TphThingBase] [x]
WHERE
	[x].[Type] IN (102, 101) AND [x].[Id] = 3
LIMIT 2

