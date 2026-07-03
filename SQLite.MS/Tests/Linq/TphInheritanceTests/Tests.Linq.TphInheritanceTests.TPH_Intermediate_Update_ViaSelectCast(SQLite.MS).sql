-- SQLite.MS SQLite
DECLARE @IntermediateField  -- Int32
SET     @IntermediateField = 333

UPDATE
	[TphThingBase]
SET
	[IntermediateField] = @IntermediateField
WHERE
	([TphThingBase].[Type] = 101 OR [TphThingBase].[Type] = 102) AND
	[TphThingBase].[Id] = 3

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
	([x].[Type] = 101 OR [x].[Type] = 102) AND [x].[Id] = 3
LIMIT 2

