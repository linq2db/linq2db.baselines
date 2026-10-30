-- Access.Jet.OleDb AccessOleDb
DECLARE @p VarChar(6, 3) -- AnsiString
SET     @p = 123.456

SELECT
	[t].[decimalDataType],
	[t].[binaryDataType],
	[t].[varbinaryDataType],
	[t].[varcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[decimalDataType] = @p

