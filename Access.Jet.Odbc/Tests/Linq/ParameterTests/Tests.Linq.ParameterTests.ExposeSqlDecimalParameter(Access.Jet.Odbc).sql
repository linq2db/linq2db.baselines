BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @p VarChar(6, 3) -- AnsiString
SET     @p = 123.456

SELECT
	[t].[DecimalDataType],
	[t].[BinaryDataType],
	[t].[VarBinaryDataType],
	[t].[VarcharDataType]
FROM
	[AllTypes] [t]
WHERE
	[t].[DecimalDataType] = ?

