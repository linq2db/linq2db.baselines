-- SqlServer.2019.MS SqlServer.2019
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x01

SELECT
	[t].[varbinaryDataType],
	[t].[varcharDataType],
	[t].[nvarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[varbinaryDataType] = @p

