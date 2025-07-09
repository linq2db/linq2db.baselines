BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @p VarBinary(1) -- Binary
SET     @p = 0x01

SELECT
	[t].[VarBinaryDataType],
	[t].[VarcharDataType],
	[t].[NVarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[VarBinaryDataType] = @p

