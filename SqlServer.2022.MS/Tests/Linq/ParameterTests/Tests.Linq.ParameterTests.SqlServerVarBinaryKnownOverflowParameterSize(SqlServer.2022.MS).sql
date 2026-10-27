-- SqlServer.2022.MS SqlServer.2022
DECLARE @p VarBinary(8000) -- Binary
SET     @p = 0x0102

SELECT
	[t].[varbinaryDataType],
	[t].[varcharDataType],
	[t].[nvarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[varbinaryDataType] = @p

