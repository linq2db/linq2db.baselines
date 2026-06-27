-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @IntermediateField  -- Int32
SET     @IntermediateField = 333

UPDATE
	[TphThingBase]
SET
	[IntermediateField] = @IntermediateField
WHERE
	[TphThingBase].[Id] = 3

-- SQLite.Classic.MPU SQLite.Classic SQLite

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
	[x].[Id] = 3
LIMIT 2

