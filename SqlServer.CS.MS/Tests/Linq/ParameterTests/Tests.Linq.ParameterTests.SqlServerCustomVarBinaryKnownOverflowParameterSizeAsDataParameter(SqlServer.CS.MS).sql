-- SqlServer.CS.MS SqlServer.2025
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

